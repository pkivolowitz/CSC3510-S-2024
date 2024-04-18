
void WrapAround(int * n, int max) {
    if (*n >= max)
        *n = 0;
    else
        (*n)++;
}

void WrapAround2(int * n, int max) {
    *n = (*n >= max) ? 0 : *n + 1;
}
