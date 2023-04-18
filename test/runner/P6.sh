#!/bin/bash

sutdir=../..
sut=${sutdir}/incldfa.py

for cat in 01 ab
do
  for dfa1 in ../${cat}/dfa/*.txt
  do
    for dfa2 in ../${cat}/dfa/*.txt
    do
      dfa1b=$(basename "${dfa1}")
      dfa2b=$(basename "${dfa2}")
      sutb=$(basename "${sut}")
      ans=$(cat "${dfa1}" "${dfa2}" | ${sut})
      printf "cat %s %s | ./%s\t%s\n" "${dfa1b}" "${dfa2b}" "${sutb}" "${ans}"
    done
  done
done
