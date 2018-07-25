#define CAML_NAME_SPACE

#include <stdio.h>
#include <caml/mlvalues.h>
#include <caml/memory.h>

CAMLprim value ml_log(value str)
{
  CAMLparam1(str);
  printf("print: %s\n", String_val(str));
  CAMLreturn(Val_unit);
}
