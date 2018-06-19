#!/bin/bash


count=`echo "obase=2;ibase=16;$1" |bc`
echo '0b '$count

count=`echo "obase=10;ibase=16;$1" |bc`
echo "0d "$count