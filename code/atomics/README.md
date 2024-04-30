# Atomic operations on the ARMv8

C++ version 11 adds built-in support for a limited set of atomic operations.

Atomic operations are ones which, once started, continue to completion.

## `<atomic>`

To make use of atomic operations, the `<atomic>` include file must be used.

Only integer atomic types are fully implemented by C++ 11. It is possible to build non-integer atomic types. Atomic pointer types are listed as *optionally* supported.

## Atomicity

Given:

```c++
int64_t a;
...
a++;
...
```

This will be implemented in the following way:

```text
    ldr    x0, =a         // load the address of 'a'
    ldr    x1, [x0]       // dereference the address to fetch the value
    add    x1, x1, 1      // add one to the value
    str    x1, [x0]       // store the value at the address of 'a'
```

Suppose there exists more than one thread executing this code. Further suppose execution unfolds in this manner:

```text
Thread 1                Thread 2
ldr    x0, =a
ldr    x1, [x0]
                        ldr    x0, =a
                        ldr    x1, [x0]
                        add    x1, x1, 1
                        str    x1, [x0]    // This store will be obliterated
add    x1, x1, 1
str    x1, [x0]                            // here
```

This results in the increment performed by Thread 2 being overwritten by Thread 1.

This implementation of the post-increment is not implemented in an atomic manner.

If instead, the variable `a` had been defined as atomic things would be different.

```c++
atomic<int64_t> a;
...
a++;
...
```

would generate:

```text
    ldr     x0, =a
.L2:
    ldaxr   x1, [x0]
    add     x1, x1, 1
    stlxr   w2, x1, [x0]
    cbnz    w2, .L2
```

The `ldaxr` instruction is similar to the `ldr` except that it also implements an `exclusive access`. Specifically, when it loads from the address contained in `x0`, it marks that address as being exclusively held. If any thread other than the current thread accesses the same address, the marking is erased.

The `stlxr` *conditionally* stores back to memory (that has been previously marked). If the exclusive mark is still present when the store happens, a non-zero is returned in a `w` register (in this case `w2`). If another thread got in to touch the memory location (causing the mark to be erased), the `w` register will contain 0. The storage location *is not changed by the store*.

The subsequent branch will cause the operation to be repeated until a clean execution is accomplished.

Note that this assumes the access performed by other threads are also being performed using the load and store exclusive variants of `ldr` and `str`. If not, then it is possible that the underlying variable can be changed without the knowledge of the atomic operation.

## Supported operations

Please see [here](https://en.cppreference.com/w/cpp/atomic/atomic) for details of supported operations.

To summarize, the:

* add
* subtract
* and
* or
* xor

operators are supported for atomic operations.

Post increment and decrement is supported but pre increment and decrement are not. There are methods which implement generalizations of addition and subtraction as well as the other operators.

Again, see [here](https://en.cppreference.com/w/cpp/atomic/atomic) for details.

## Synchronization primitives

These instructions (`ldaxr` and `stlxr`) can be used to implement syncronization primitives such as mutexes and related structures.
