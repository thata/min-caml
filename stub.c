#include <stdio.h>
#include <stdlib.h>

extern int min_caml_start(char *, char *);

int main() {
  char *hp, *sp;

  sp = alloca(1000000); hp = malloc(4000000);
  if (hp == NULL || sp == NULL) {
    fprintf(stderr, "malloc or alloca failed\n");
    return 1;
  }
  fprintf(stderr, "sp = %p, hp = %p\n", sp, hp);
  min_caml_start(sp, hp);

  return 0;
}

void min_caml_print_int(int n) {
  printf("%d", n);
}

void min_caml_print_float(double n) {
  printf("%lf", n);
}

void min_caml_print_newline() {
  printf("\n");
}
