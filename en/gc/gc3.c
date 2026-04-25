#include <stdio.h>
#include <limits.h>

#define WORDSIZE (__SIZEOF_POINTER__ * 8)

int main() {
    int size = ((int) ((sizeof(void *) * 3) / sizeof(char) - 1));
    printf("%d bits: %d bytes long\n", WORDSIZE, size);
}
