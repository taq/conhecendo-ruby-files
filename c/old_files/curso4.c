#include <ruby.h>
#include <time.h>

VALUE modulo, classe;

VALUE t_init(VALUE self, VALUE valor){
  rb_iv_set(self, "@descricao", valor);
  return self;
}

VALUE descricao(VALUE self){
  return rb_iv_get(self, "@descricao");
}

struct tm *get_date_time() {
  time_t dt;
  struct tm *dc;
  time(&dt);
  dc = localtime(&dt);
  return dc;
}

VALUE data(VALUE self) {
  char str[15];
  struct tm *dc = get_date_time();
  sprintf(str, "%02d/%02d/%04d", dc->tm_mday, dc->tm_mon + 1, dc->tm_year + 1900);
  return rb_str_new2(str);
}

VALUE hora(VALUE self) {
  char str[15];
  struct tm *dc = get_date_time();
  sprintf(str, "%02d:%02d:%02d", dc->tm_hour, dc->tm_min, dc->tm_sec);
  return rb_str_new2(str);
}

void Init_curso() {
  modulo = rb_define_module("Curso");
  classe = rb_define_class_under(modulo, "Horario", rb_cObject);
  rb_define_method(classe, "initialize", t_init, 1);
  rb_define_method(classe, "descricao", descricao, 0);
  rb_define_method(classe, "data", data, 0);
  rb_define_method(classe, "hora", hora, 0);
}
