#include <stdio.h>
#include <stdlib.h>
#include <math.h>

extern int min_caml_start(char *, char *);

static FILE *fp;

int main( int argc, char *argv[] ) {
  char *hp, *sp;

  sp = alloca(1000000); hp = malloc(4000000);
  if (hp == NULL || sp == NULL) {
    fprintf(stderr, "malloc or alloca failed\n");
    return 1;
  }

  // ball.sld を開く
  fp = fopen("ball.sld", "r");


  fprintf(stderr, "sp = %p, hp = %p\n", sp, hp);
  min_caml_start(sp, hp);

  // ball.sld を閉じる
  fclose(fp);

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
  char c[] = {0, 0};
  c[0] = (char)0xff & n;
  printf("%s", c);
}

// OK
long min_caml_read_int() {
  long l;
  // ball.sld から int を読み込む
  fscanf(fp, "%ld", &l);
  // scanf("%ld", &l);
  return l;
}

// OK
double min_caml_read_float() {
    double d;
    // ball.sld から double を読み込む
    fscanf(fp, "%lf", &d);
    // scanf("%lf", &d);
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
