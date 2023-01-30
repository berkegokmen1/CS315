#include <stdio.h>

void foo(char s[]) { printf("5th char in %s is %c\n", s, s[4]); }

int main() {
  char str[] = "abc";
  foo(str);
}