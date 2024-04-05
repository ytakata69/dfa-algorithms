#!/usr/bin/env python3

# A dummy sample program for Question 1 (1) of Homework 2b.
# Input: a pair of a DFA M and a string w
# Output: "Yes" if M accepts w. "No" otherwise.

# THIS IS A DUMMY:
# This program always outputs "Yes".

# Read a DFA M
n, t, g = map(int, input().split())
s = input()
d = []
for i in range(n):
    d.append(list(map(int, input().split())))
I = int(input())
F = list(map(int, input().split()))

assert len(s) == t
assert all(len(di) == t for di in d)
assert len(F) == g

# Read a string w
l = int(input())
w = input()

assert len(w) == l

# Always output "Yes"
print("Yes")
