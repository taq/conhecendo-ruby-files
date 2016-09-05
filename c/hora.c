#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

struct tm *get_date_time() {
  time_t dt;
  struct tm *dc;
  time(&dt);
  dc = localtime(&dt);
  return dc;
}

char *hora() {
  char *str, cur[15];
  str = malloc(sizeof(char) * 15);
  struct tm *dc = get_date_time();
  sprintf(cur, "%02d:%02d:%02d", dc->tm_hour, dc->tm_min, dc->tm_sec);
  strcpy(str, cur);
  return str;
}
