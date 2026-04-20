#include <ruby.h>
#include <time.h>

VALUE modulo, classe;

VALUE t_init(VALUE self, VALUE valor){
  rb_iv_set(self, "@descricao", valor);
  return self;
}

void Init_curso(){
  modulo = rb_define_module("Curso");
  classe = rb_define_class_under(modulo, "Horario", rb_cObject);
  rb_define_method(classe,"initialize", t_init, 1);
}
