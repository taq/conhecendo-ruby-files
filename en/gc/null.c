#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  char *str;
  str = malloc(sizeof(char) * 15);
  strcpy(str, "hello world");
  printf("%s\n", str);
  free(str);
  return 0;
}
