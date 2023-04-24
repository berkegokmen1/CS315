#include <stdio.h>
int main() {
  int b = 5;
  b = b++ + b++; /* legal */
  printf("%d\n", b);
  return 0;
}
