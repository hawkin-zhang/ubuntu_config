#!/bin/bash


count=`echo "obase=2;ibase=10;$1" |bc`
echo '0b '$count

count=`echo "obase=16;ibase=10;$1" |bc`
echo "0x "$count