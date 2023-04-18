#!/bin/bash

# Testing script for Problems 4 & 5,
# where the system-under-testing takes a DFA as input.
# (The alphabet of the DFA should contain '1'.)
# You can specify the name of the sut by the command-line argument

# the directory and the name of the system-under-testing
sutdir=../..
sut=${sutdir}/111dfa.py

case x"$1"x in
xx) ;;
*)  sut="$1" ;;
esac

sutb=$(basename "${sut}")

cat=01
for dfa in ../${cat}/dfa/*.txt
do
  dfab=$(basename "${dfa}")
  ans=$(${sut} < "${dfa}")
  printf "./%s < %s\t%s\n" "${sutb}" "${dfab}" "${ans}"
done

# replace the alphabet "ab" with "01" while testing
cat=ab
for dfa in ../${cat}/dfa/*.txt
do
  dfab=$(basename "${dfa}")
  ans=$(sed '2s/ab/01/' "${dfa}" | ${sut})
  printf "sed '2s/ab/01/' %s | ./%s\t%s\n" "${dfab}" "${sutb}" "${ans}"
done
