#!/usr/bin/env bash

for g in {1..50}
do
  m=0
  for i in `ls -d 3*`
  do
    v=`head -n ${g} ${i}/Rsummary |tail -n 1`
    m=`scale=6;echo $m+$v|bc`
  done
  echo "scale=6;$m/25"|bc >> Rbygen
done

for g in {1..50}
do
  m=0
  for i in `ls -d 3*`
  do
    v=`head -n ${g} ${i}/Rsummary_1 |tail -n 1`
    m=`scale=6;echo $m+$v|bc`
  done
  echo "scale=6;$m/25"|bc >> Rbygen_1
done
