#!/usr/bin/env python3

import sys

ls = [row.strip('\n') for row in sys.stdin]
ls.sort(key=lambda s: (len(s), s))

eps = "eps.txt"
els = [(i, f) for i, f in enumerate(ls) if f.endswith(eps)]
for i, f in els:
    del ls[i]
ls = [f for _, f in els] + ls

print("\n".join(ls))
