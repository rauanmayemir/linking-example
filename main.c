#define CAML_NAME_SPACE

#include <caml/callback.h>

int main(int argc, char **argv)
{
  caml_main(argv);
  value *app_main = caml_named_value("App.main");
  caml_callback(*app_main, Val_unit);

  return 0;
}
