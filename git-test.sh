#!/bin/bash
gitcommit-id1
gitcommit-id2
gitcommit-id4
#d2b.sh: convert a decimal number to a binary number
#Usage: ./d2b.sh decimal_number
BAD_ARGS=65
WRONG_ARGS=66
ARGS=1                                          #参数数目
if [ $# -ne $ARGS ]
then
    echo "Usage: `basename $0` decimal_number"
    exit $BAD_ARGS
fi
function is_positive_int()                      #用于判断输入是否为正整数，是返回1，否返回0
{
    if [ $# -lt 1 ]
    then
        return 0
    fi
    if [[ $1 =~ ^[1-9][0-9]*$ ]]
    then
        return 1
    fi
    if [[ $1 =~ ^0$ ]]
    then
        return 1
    fi
    return 0
}
is_positive_int $1                              #调用该函数进行判断
if [ $? -ne 1 ]                                 #不为1，则不是十进制正整数，提示并退出                  
then
    num=$1
else
    num=`echo "obase=10;ibase=16;$1" | bc`
fi

echo "Decimal Number" $num
#echo "$1 is a decimal number."
num=$1
result_1="------------------------------------------------------------------------------------------------------------------------"
result_title="----------|-31-30-29-28-|-27-26-25-24-|-23-22-21-20-|-19-18-17-16-|-15-14-13-12-|-11-10--9--8-|-7--6--5--4-|-3--2--1--0-|"
result_big="|"
result_lit="|-"
result_butline="————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"
count=32
loop=4

while [ $count -gt 0 ]                        #辗转相除法
do
    let r=num%2
    result=$r$result
    result_big="-"$r"-"$result_big
    result_lit=$result_lit"-"$r"-"
    let num=num/2
    let count=$count-1
    let loop=$loop-1
    if [ $loop -eq 0 ]
    then
        if [ $count -gt 22 ]
        then
            result_big="|"$result_big
        else
            result_big="|-"$result_big
        fi

        if [ $count -gt 10 ]
        then
            result_lit=$result_lit"|-"
        else
            result_lit=$result_lit"|"

        fi

        let loop=4+$loop

    fi

done
#echo "The binary number of $1 is $result"
echo $result_butline
echo $result_title
echo $result_butline

result_big="Lit Endian"$result_big
echo $result_big
echo $result_butline

result_lit="Big Endian"$result_lit
echo $result_lit
echo $result_butline

exit 0

