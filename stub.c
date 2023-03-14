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

  // NOTE: 標準入力から読み込むとlldbやXcodeでデバッグしづらいので、その時は引数で渡したファイルから読み込むようにする
  // 引数で渡したファイルを開く
  if (argc < 2) {
    fprintf(stderr, "Usage: %s <file.sld>", argv[0]);
    return 1;
  }
  fp = fopen(argv[1], "r");

  // fprintf(stderr, "sp = %p, hp = %p\n", sp, hp);
  min_caml_start(sp, hp);

  fclose(fp);

  return 0;
}

void min_caml_print_int(int n) {
  printf("%d", n);
}

void min_caml_print_float(float f) {
  printf("%g", f);
}

// OK
void min_caml_print_byte(int n) {
  putchar(n);
}

// OK
int min_caml_read_int() {
  int i;
  fscanf(fp, "%d", &i);
  // scanf("%d", &i);
  return i;
}

// OK
float min_caml_read_float() {
    float f;
    fscanf(fp, "%f", &f);
    // scanf("%f", &f);
    return f;
}

void min_caml_print_newline() {
  printf("\n");
}

// atan
float min_caml_atan(float x) {
  return atan(x);
}

// cos
float min_caml_cos(float x) {
  return cos(x);
}

// floor
float min_caml_floor(float x) {
  return floor(x);
}

// sin
float min_caml_sin(float x) {
  return sin(x);
}

// test/float.ml を実行するために以下を追加した
// ここから

float min_caml_abs_float(float x) {
  return fabs(x);
}

float min_caml_sqrt(float x) {
  return sqrt(x);
}

float min_caml_float_of_int(int x) {
  return (float)x;
}

int min_caml_int_of_float(float x) {
  return (int)x;
}

int min_caml_truncate(float x) {
  return (int)x;
}

// ここまで
