#!/bin/bash

while [ 1 ];do
  CB=$(xclip -o)
  if [ "$CB" != "$pCB" ];then
    echo "$CB"|sed 's/=/ 0x/g'|xxd -r
    echo 
  fi
  pCB=$CB
  sleep 0.5
done
