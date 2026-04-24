#include <ruby.h>
#include <time.h>

VALUE module, cls;

VALUE t_init(VALUE self, VALUE valor){
  rb_iv_set(self, "@description", valor);
  return self;
}

VALUE description(VALUE self){
  return rb_iv_get(self, "@description");
}

struct tm *get_date_time() {
  time_t dt;
  struct tm *dc;
  time(&dt);
  dc = localtime(&dt);
  return dc;
}

VALUE date_meth(VALUE self) {
  char str[30];
  struct tm *dc = get_date_time();
  sprintf(str, "%02d/%02d/%04d", dc->tm_mday, dc->tm_mon + 1, dc->tm_year + 1900);
  return rb_str_new2(str);
}

VALUE time_meth(VALUE self) {
  char str[15];
  struct tm *dc = get_date_time();
  sprintf(str, "%02d:%02d:%02d", dc->tm_hour, dc->tm_min, dc->tm_sec);
  return rb_str_new2(str);
}

void Init_course() {
  module = rb_define_module("Course");
  cls = rb_define_class_under(module, "Time", rb_cObject);
  rb_define_method(cls, "initialize", t_init, 1);
  rb_define_method(cls, "description", description, 0);
  rb_define_method(cls, "date", date_meth, 0);
  rb_define_method(cls, "time", time_meth, 0);
}
