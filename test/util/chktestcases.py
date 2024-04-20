#!/usr/bin/env python3

# Check the testcases

import glob
import os

categories = ["01", "ab"]

def chk_and_split(row):
    assert '0' <= row[0] <= '9'
    assert '0' <= row[-2] <= '9'
    assert row[-1] == '\n'
    assert '\n' not in row[:-1]
    assert '\t' not in row
    assert '  ' not in row
    return list(map(int, row.split()))

for cat in categories:
    # dfa files
    for dfa in glob.glob(os.path.join("..", cat, "dfa", "*.txt")):
        #print(f"checking {dfa}")
        with open(dfa) as f:
            n, t, g = chk_and_split(f.readline())
            s = f.readline()[:-1]
            assert len(s) == t, f"len({s}) != {t}"
            assert s == cat, f"{s} != {cat}"
            assert g <= n
            for i in range(n):
                d = chk_and_split(f.readline())
                assert len(d) == t
                assert all(1 <= di <= n for di in d)
            I = chk_and_split(f.readline())
            assert len(I) == 1
            assert 1 <= I[0] <= n
            F = chk_and_split(f.readline())
            assert len(F) == g
            assert all(1 <= fi <= n for fi in F)

    # word files
    for w in glob.glob(os.path.join("..", cat, "w", "*.txt")):
        #print(f"checking {w}")
        name = os.path.basename(w)
        name = name[:-4]
        with open(w) as f:
            rows = f.readlines()
            assert len(rows) == 2
        l = int(rows[0][:-1])
        s = rows[1][:-1]
        assert l == len(s), f"{l} != len({s})"
        assert s == ("" if name == "eps" else name), f"{s} != {name}"
