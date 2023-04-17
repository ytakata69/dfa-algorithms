#!/bin/bash

sutdir=../..
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
      sutb=$(basename "${sut}")
      ans=$(${sut} < "${dfa}")
      printf "./%s < %s\t%s\n" "${sutb}" "${dfab}" "${ans}"
  done
done
