# Expected / Projected / Actual Class Progression

## Week 1 - 2/1

* Syllabus

* What's already assigned

* Install

* Questions

* [Recording](https://carthage-edu.zoom.us/rec/share/gCGnpDD7wPHVZNwrTVYeSL_Yhsr1ci4nUyF2iasgwqrgVGV7D3hJnfKyDNktwvRS.xzYQFui2EmpOi-F1)
  
## Week 2 - 2/6 2/8

* [Tuesday's Recording](https://carthage-edu.zoom.us/rec/share/BIabiU2_JVNuvGPhk7KdUooVDXMvmxfWz_sGvCKyzjl1EJM3WSwXriWHsn8aDD-m.CQ53ty-hP5J2Y7R2)

* [Thursday's Recording](https://carthage-edu.zoom.us/rec/share/LqMZ9CBBG5Pm_Q4Qu2D9gddOjYPpL1r1HdWri_NH11u8WW4lJkvqtIpsdRSZ7CcH.AY_32gyXg9AW8LMk)

* [Apple Silicon](<https://youtu.be/uPXzE_XCZeg>)

* [Windows](<https://youtu.be/8-U7VUypYhY>)

* Intel Mac - get the distro, get QEMU, follow instructions for Windows
  except use your plain old terminal instead of WSL.

* Binary

* Powers of 2 up to 2<sup>16</sup>

* Signed and Unsigned Integers

* 1's Complement and 2's Complement

* Registers

  * Integer Registers w & x

  * Why Have Registers

    * Speed of Processors Relative to RAM

  * *Up to this point was Tuesday 2/6. Thursday's class follows.*

  * Special Registers

    * Program Counter - pc

    * Stack Pointer - sp

## Week 3 - 2/13 2/15

* [Tuesday's Recording](https://carthage-edu.zoom.us/rec/share/m2Hh93gP3ZE2bPsgYW1r_sRkpE2cMBQ11SLqFFQReEnM9xfIGDyAoH0Njgu36RVE.It41YUZKN5IGlR-6)

* [Thursday's Recording](https://carthage-edu.zoom.us/rec/share/Tahei9ggPeGgHXR8u5PNoWWqoAu8y-n24UhkV6MsttcBLybkpi9VvCtg07Mlmjo.UxFTQLnFyWFsw6NI)

* Floating Point Registers ***h***, s, d, v & q

  * h are half floats - not used much - are least significant half of
    s's

  * s are single precision values - least significant half of d's

  * d are double precision values - are least significant half of v's

  * v's are a vector of something

  * q's are a single 128 bit value

* Floating Point Construction

  * Floats / Doubles are approximations

  * Normalized scientific notation

    * Sign

    * Exponent

    * Mantissa

  * Single Precision - how above are implemented

  * Double Precision - how above are implemented

* Why Have Registers (Continued)

  * Steps Needed to Execute an Instruction

  * Pipelined Execution

* Aside:

  * Bit fields in C/C++

  * Unions in C/C++

* **Above this was covered Tuesday. Below this covered Thursday.**

* Special Registers (other than the *really* special registers)

  * Frame Pointer - x29

  * Link Register - x30

* How linking works - what is an object file

* Assembly Language!

  * `bl` branch with link (x30)

  * `ret` return (uses x30)

  * `and` bitwise and

  * `cbnz` compare and branch if non-zero

  * `cmp` compare (is actually a subtraction)

  * `b` unconditional branch

  * `.p2align` power of 2 alignment

  * `.text` what comes next is code

  * `.global` add "I have ___" to object file TOC

  * `str`, `stp`, `ldr`, `ldp` store to memory, load from memory

  * `beq` branch if the previous `cmp` is zero

  * `add` add two registers together and store result in a register

  * `mov` copy a value into a register

  * `.end` nothing else should come after this

  * `.asciz` put an ASCII string with null terminator into memory

## Week 4 - 2/20 2/22

* [2/20/2024](https://carthage-edu.zoom.us/rec/share/Gicnfp6G6OhzH8PNYH-PHiH1asnrQyJ9FngDDsMn4kDSQ0norq8ZPauSqndIhhSw.REW5OvQilDVmd0pu)

* [2/22/2024](https://carthage-edu.zoom.us/rec/share/wPMJ6kri71dzud08PjXUacfXQI0Fizsf-589opIOZniVHTgbxpxgvqJo1gL7GO92.R7n-8NPn69AMo_m6)

* **Tuesday**

  * Assembly Language

  * File descriptors

  * system calls using CRT vs making them directly

* **Thursday**

  * Assembly Language

  * Going if, for, while, continue, break

## Week 5 - 2/27 2/29

* **Tuesday**

  * Review

  * [2/27/2024](https://carthage-edu.zoom.us/rec/share/6YXA7XHpMNFnuMJIWwBWKQiwDxOoGOx6yaAyMNuEoWvW00rNFU7ObvYfqaZbd2Ag.OZ4as46lnkc81NS0)

  * All essays graded. 17 P1 left to grade - been quite sick so
  progress has been slow

  * Discuss essay
  
  * Common biggest error seen so far in P1 is calling write assuming
  that x0 through x7 are not corrupted.

    * Demonstrate `regs` a program designed to drive this point home.

  * P2 is assigned

  * Go over P2

  * `nm` demonstrated to demonstrate the "toc" i.e. the symbol table
  showing "have" and "need"

  * demonstrate running `as` directly

  * demonstrate running `cpp` directly

  * demonstrate asking c++ to leave behind a .S file

  * began discussion of structs

* **Thursday**

  * [2/29/2024](https://carthage-edu.zoom.us/rec/share/PZtFVTBvdLS4mrBxGoHUX5UPIfILniCZdpwr333EQwx2bB6jGLJhp6LnEzKH6xul.K_e5uRq7L5Uw6JyH)

  * All P1 graded

  * Review

  * What is x29
  
  * malloc() - how it works

  * free() - how it works

  * **brief** introduction to virtual memory

    * history - none, fixed, static relocation, dynamic relocation
    (segmentation)

    * paging

    * linear page tables

  * P2 questions

## "Spring Break"

## Week 6 - 3/12 3/14

* **Tuesday**

  Class canceled due to injury to instructor.

* **Thursday**

  * The Debugging Talk

    [Recording](https://carthage-edu.zoom.us/rec/share/hhUJTYvsHf_BuZthgAlgYZh_eAt0GsR54Mge0G41qJWu8PaempyyqcK8uyCyDT-L.KPyZXmVRB3f5G_ns)

## Week 7 - 3/19 3/21

* **Tuesday**

  * Review and guided coding

  * [Recording](https://carthage-edu.zoom.us/rec/share/ZMsAJsFTX-MfGcuvuJ6vxoRagbEGs6Vn3apVyXceMsxurCg_6hzFirfXwovUyMAO.rtIADBzqUwNtevjh)

* **Thursday**

  * We begin introducing hardware concepts
  
  * Spinning Disks

    * Speed and latencies

    * Construction

    * RAID (part 1)

  * [Recording](https://carthage-edu.zoom.us/rec/share/qU6mW5A20HxPeUjb7PIiAVd9OSWKNUFiNhQBOeCFvoskZ-Vi1Ufaz9hxKAgjHA.9q3LbJ-th_-DG8xK)

## Week 8 - 3/26 3/28

* **Tuesday**

   RAID (part 2)

   Spaghetti Code

   Review of Calling and Making "functions"

  [Recording](https://carthage-edu.zoom.us/rec/share/Ef11YYgIrPhd4F_cYImMYXM1rXeaspz-cn0ebqrMztgAJtbN3m3BCRbsRKmQaK5_.Hcjq-D6UmvTK7yUR)

* **Thursday**

   No class.

## Week 9 - 4/2 4/4

* **Tuesday**

   Review

   Review of calling Assembly from C and C++.

   Review of function calls and parameters.

   Writing a recursive function. Example: factorial.

   Demonstration of recursion using GDB.

   SSDs

   [Recording](https://carthage-edu.zoom.us/rec/share/8A2hRIwtbEF50xdFiU34Se_H4VZdQez1gnTTwZGPuZD2w7OgZUVAGvyXeMAFi1tu.E4LtpxCdHjTuGios)
  
* **Thursday**

   Review.

   What is the "this" pointer?

   Going over Project 4.

   [Sample program](./code/example.S) doing floating point math.

   [Recording](https://carthage-edu.zoom.us/rec/share/bzRnBnOlf9kPp82i1KWGOA3iLrDAOvF074hhVP4eVQE4JEyFVOlEBZyUHBKUllNf.D8_PV0V-Jfid1aZS)

## Week 10 - 4/9 4/11

* **Tuesday**

   [Recording](https://carthage-edu.zoom.us/rec/share/J0B-R4cQmnJ9iHPrGAiyLQ0bTLUukxiblTyjhY5uQPpDxuUN2MnJxgx3qCUxU9Bp.3jnR8_a0f5fWLQh1)

* **Thursday**

   No class due to illness.

## Week 11 - 4/16 4/18

* **Tuesday**

   Going over Project 5

   Introduced SIMD and SIMD instructions

   Please stop using direct system calls

   Introduced Intrinsics

   Discussion of which floating point registers are "safe"

   [Recording](https://carthage-edu.zoom.us/rec/share/Te6p5i3C4L23IIDweGS4N5aFlNlx-PDM8Ik576QMH7NNfS_nkOryJjnhHUCiBZgZ.MFf0RyiMREDtY1cJ)

* **Thursday**

## Week 12 - 4/23 4/25

* **Tuesday**

* **Thursday**

## Week 13 - 4/30 5/2

* **Tuesday**

* **Thursday**

## Week 14 - 5/7 5/9
