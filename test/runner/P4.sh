#!/bin/bash

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

cat=ab
for dfa in ../${cat}/dfa/*.txt
do
      dfab=$(basename "${dfa}")
      ans=$(sed '2s/ab/01/' "${dfa}" | ${sut})
      printf "sed '2s/ab/01/' %s | ./%s\t%s\n" "${dfab}" "${sutb}" "${ans}"
done
