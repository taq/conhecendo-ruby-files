#include <ruby.h>
#include <time.h>

VALUE modulo, classe;

void Init_curso(){
  modulo = rb_define_module("Curso");
  classe = rb_define_class_under(modulo, "Horario", rb_cObject);
}
