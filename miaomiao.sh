#!/bin/bash
set -eux

CITY=Shenzhen
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

RESULT=$(curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -s \
  https://miaomiao.scmttec.com/seckill/seckill/list.do?offset\=0\&limit\=10\&regionCode\=4201)

if [ ${#RESULT} -eq "49" ];then
  echo "nothing"
else
echo $RESULT
fi

