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

void Init_course(){
  module = rb_define_module("Course");
  cls = rb_define_class_under(module, "Time", rb_cObject);
  rb_define_method(cls, "initialize", t_init, 1);
  rb_define_method(cls, "description", description, 0);
}
