#!/bin/bash

sutdir=../..
sut=${sutdir}/adfa.py

for cat in 01 ab
do
  for dfa in ../${cat}/dfa/*.txt
  do
    for w in $(ls ../${cat}/w/*.txt | ./sortlen.py)
    do
      dfab=$(basename "${dfa}")
      wb=$(basename "${w}")
      sutb=$(basename "${sut}")
      ans=$(cat "${dfa}" "${w}" | ${sut})
      printf "cat %s %s | ./%s\t%s\n" "${dfab}" "${wb}" "${sutb}" "${ans}"
    done
  done
done
