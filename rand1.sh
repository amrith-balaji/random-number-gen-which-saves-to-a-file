#!/bin/bash
num=1
while [ $num -ne 4 ]
do
        echo $num  hello world
        ./rand1
        num=$(($num+1))
done
