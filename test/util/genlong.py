#!/usr/bin/env python3

# Generate a DFA that accepts only a single long string.
# Usage:
#     $ ./genlong.py [length]
#
# The generated DFA accepts a string "0...0111".

import sys

# length of the string: the DFA accepts '0' * l + '111'
l = 100  # default
if len(sys.argv) >= 2:
    l = int(sys.argv[1])

sigma = "01"
nstate = l + 5
final = [nstate - 1]
init = 1
dead = nstate

print(nstate, len(sigma), len(final))
print(sigma)
for q in range(1, l + 1):
    print(q + 1, dead)
for q in range(l + 1, dead):
    print(dead, q + 1)
print(dead, dead)
print(init)
print(' '.join(map(str, final)))
