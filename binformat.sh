#!/bin/bash


count=`echo "obase=10;ibase=2;$1" |bc`
echo "0d "$count

count=`echo "obase=16;ibase=2;$1" |bc`
echo "0x "$count

