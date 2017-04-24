#include <stdio.h>

void inplace_swap(int* x, int* y) {
  *y = *x ^ *y;
  *x = *x ^ *y;
  *y = *x ^ *y;
}

void reverse_array(int a[], int cnt) {
  int first, last;
  for (first = 0, last = cnt - 1;
      first < last;
      first++, last--) {
    inplace_swap(&a[first], &a[last]);
  }
}

void show_array(int a[], int cnt) {
  int i;
  for (i = 0; i < cnt; ++i) {
    printf("%d ", a[i]);
  }
  printf("\n");
}

int main(int argc, char* argv[]) {
  int a[] = {1, 2, 3, 4};
  reverse_array(a, 4);
  show_array(a, 4);

  int b[] = {1, 2, 3, 4, 5};
  reverse_array(b, 5);
  show_array(b, 5);
}
