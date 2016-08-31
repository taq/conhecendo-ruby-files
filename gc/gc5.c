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
  strcpy(d.name, "taq");
  printf("%d %s\n", d.id, d.name);
  return 0;
}
