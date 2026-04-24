#include <ruby.h>
#include <time.h>

VALUE module, cls;

void Init_course(){
  module = rb_define_module("Course");
  cls = rb_define_class_under(module, "Time", rb_cObject);
}
