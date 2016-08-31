#include <stdio.h>
#include <stdlib.h>
#include <string.h>

union data {
  int id;
  char name[20];
};

int main() {
  union data d;
  d.id = 1;
  printf("%d\n", d.id);
  strcpy(d.name, "taq");
  printf("%s\n", d.name);
  return 0;
}
