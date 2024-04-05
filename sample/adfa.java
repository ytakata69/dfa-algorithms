/**
 * A dummy sample program for Question 1 (1) of Homework 2b.
 * Input: a pair of a DFA M and a string w
 * Output: "Yes" if M accepts w. "No" otherwise.
 *
 * THIS IS A DUMMY:
 * This program always outputs "Yes".
 *
 * Usage:
 *   $ javac adfa.java
 *   $ java Main
 */

import java.util.Scanner;

class Main {

    public static void main(String[] arg) {
        Scanner scanner = new Scanner(System.in);

        // Read a DFA M
        int n = scanner.nextInt();
        int t = scanner.nextInt();
        int g = scanner.nextInt();

        String s = scanner.next();
        assert s.length() == t;

        int[][] d = new int[n][t];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < t; j++) {
                d[i][j] = scanner.nextInt();
            }
        }

        int I = scanner.nextInt();

        int[] F = new int[g];
        for (int i = 0; i < g; i++) {
            F[i] = scanner.nextInt();
        }

        // Read a string w
        int l = scanner.nextInt();
        String w = l > 0 ? scanner.next() : "";
        assert w.length() == l;

        // Always output "Yes"
        System.out.println("Yes");
    }
}
