#!/bin/bash

# Testing script for Problem 1,
# where the system-under-testing takes a DFA and a word as input.

# the directory and the name of the system-under-testing
sutdir=../..
sut=${sutdir}/adfa.py

sutb=$(basename "${sut}")

for cat in 01 ab
do
  for dfa in ../${cat}/dfa/*.txt
  do
    for w in $(ls ../${cat}/w/*.txt | ./sortlen.py)
    do
      dfab=$(basename "${dfa}")
      wb=$(basename "${w}")
      ans=$(cat "${dfa}" "${w}" | ${sut})
      printf "cat %s %s | ./%s\t%s\n" "${dfab}" "${wb}" "${sutb}" "${ans}"
    done
  done
done
