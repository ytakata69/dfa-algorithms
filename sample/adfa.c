/**
 * A dummy sample program for Question 1 (1) of Homework 2b.
 * Input: a pair of a DFA M and a string w
 * Output: "Yes" if M accepts w. "No" otherwise.
 *
 * THIS IS A DUMMY:
 * This program always outputs "Yes".
 *
 * Usage:
 *   $ gcc adfa.c
 *   $ ./a.out
 */

#include <stdio.h>
#include <string.h>
#include <assert.h>

#define MAX_N  100
#define MAX_T  100
#define MAX_L  100

int main()
{
  int n, t, g, I;
  static char s[MAX_T];
  static int d[MAX_N][MAX_T];
  static int F[MAX_N];
  int l;
  static char w[MAX_L];
  int i, j;

  /* Read a DFA M */
  scanf("%d%d%d", &n, &t, &g);
  scanf("%s", s);
  assert(strlen(s) == (unsigned)t);

  for (i = 0; i < n; i++) {
    for (j = 0; j < t; j++) {
      scanf("%d", &d[i][j]);
    }
  }
  scanf("%d", &I);
  for (i = 0; i < g; i++) {
    scanf("%d", &F[i]);
  }

  /* Read a string w */
  scanf("%d", &l);
  if (l > 0) scanf("%s", w);
  else       strcpy(w, "");

  assert(strlen(w) == (unsigned)l);

  /* Always output "Yes" */
  printf("Yes\n");

  return 0;
}
