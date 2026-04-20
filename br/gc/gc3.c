#include <stdio.h>
#include <limits.h>

int main() {
   int size = ((int) ((sizeof(void *) * 3) / sizeof(char) - 1));
   printf("%d bits: %d bytes de comprimento\n", __WORDSIZE, size);
}
