#include <stdio.h>
#include <limits.h>

int main() {
  printf("%d bits: %d bytes de comprimento\n", __WORDSIZE, ((int) ((sizeof(unsigned int) * 3) / sizeof(char) - 1)));
}
