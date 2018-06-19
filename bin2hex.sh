#!/bin/bash


result=`echo "obase=16;ibase=2;$1" |bc`
echo "0x"$result
