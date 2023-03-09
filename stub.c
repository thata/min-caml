#include <stdio.h>
#include <stdlib.h>
#include <math.h>

extern int min_caml_start(char *, char *) asm ("_min_caml_start");
extern void min_caml_print_int(long) asm ("_min_caml_print_int");
extern void min_caml_print_newline() asm ("_min_caml_print_newline");

// static FILE *fp;

int main( int argc, char *argv[] ) {
  char *hp, *sp;

  sp = alloca(1000000); hp = malloc(4000000);
  if (hp == NULL || sp == NULL) {
    fprintf(stderr, "malloc or alloca failed\n");
    return 1;
  }

  // NOTE: 標準入力から読み込むとlldbやXcodeでデバッグしづらいので、その時は引数で渡したファイルから読み込むようにする
  // // 引数で渡したファイルを開く
  // if (argc < 2) {
  //   fprintf(stderr, "Usage: %s <file.sld>", argv[0]);
  //   return 1;
  // }
  // fp = fopen(argv[1], "r");

  fprintf(stderr, "sp = %p, hp = %p\n", sp, hp);
  min_caml_start(sp, hp);

  // fclose(fp);

  return 0;
}

void min_caml_print_int(long n) {
  printf("%ld", n);
}

void min_caml_print_float(double d) {
  printf("%lf", d);
}

// OK
void min_caml_print_byte(long n) {
  putchar(n);
}

// OK
long min_caml_read_int() {
  long l;
  // fscanf(fp, "%ld", &l);
  scanf("%ld", &l);
  return l;
}

// OK
double min_caml_read_float() {
    double d;
    // fscanf(fp, "%lf", &d);
    scanf("%lf", &d);
    return d;
}

void min_caml_print_newline() {
  printf("\n");
}

// atan
double min_caml_atan(double x) {
  return atan(x);
}

// cos
double min_caml_cos(double x) {
  return cos(x);
}

// floor
double min_caml_floor(double x) {
  return floor(x);
}

// sin
double min_caml_sin(double x) {
  return sin(x);
}
