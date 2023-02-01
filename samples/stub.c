#include <stdio.h>
#include <stdlib.h>

extern int min_caml_start();

int main() {
  min_caml_start();
  return 0;
}

void min_caml_print_int(int n) {
  printf("%d", n);
}

void min_caml_print_newline() {
  printf("\n");
}
