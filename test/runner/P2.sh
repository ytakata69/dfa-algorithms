#!/bin/bash

# Testing script for Problems 2, 3, and 7,
# where the system-under-testing takes a DFA as input.
# You can specify the name of the sut by the command-line argument.

# the directory and the name of the system-under-testing
sutdir=../../yt
sut=${sutdir}/nedfa.py

case x"$1"x in
xx) ;;
*)  sut="$1" ;;
esac

for cat in 01 ab
do
  for dfa in ../${cat}/dfa/*.txt
  do
      dfab=$(basename "${dfa}")
      ans=$(${sut} < "${dfa}")
      printf "sut < %s\t%s\n" "${dfab}" "${ans}"
  done
done
