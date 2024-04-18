#!/usr/bin/env python3

# Generate a DFA that accepts all and only the strings whose length <= l.
# Usage:
#     $ ./genfinite.py [length]

import sys

# upper bound of length of the string
l = 100  # default
if len(sys.argv) >= 2:
    l = int(sys.argv[1])

sigma = "01"
nstate = l + 2
init = 1
dead = nstate
final = list(range(1, dead))  # all states other than dead

print(nstate, len(sigma), len(final))
print(sigma)
for q in range(1, dead):
    print(q + 1, q + 1)
print(dead, dead)
print(init)
print(' '.join(map(str, final)))
