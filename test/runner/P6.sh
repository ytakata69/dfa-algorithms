#!/bin/bash

# Testing script for Problem 6,
# where the system-under-testing takes two DFAs as input.

# the directory and the name of the system-under-testing
sutdir=../..
sut=${sutdir}/incldfa.py

sutb=$(basename "${sut}")

for cat in 01 ab
do
  for dfa1 in ../${cat}/dfa/*.txt
  do
    for dfa2 in ../${cat}/dfa/*.txt
    do
      dfa1b=$(basename "${dfa1}")
      dfa2b=$(basename "${dfa2}")
      ans=$(cat "${dfa1}" "${dfa2}" | ${sut})
      printf "cat %s %s | ./%s\t%s\n" "${dfa1b}" "${dfa2b}" "${sutb}" "${ans}"
    done
  done
done
