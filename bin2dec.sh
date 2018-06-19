#!/bin/bash


count=`echo "obase=10;ibase=2;$1" |bc`
echo $count"(DEC)"

