#!/bin/sh

ssh root@3.141.38.228 <<EOF
  cd djtrump
  git pull
  source /root/djtrump/xyz/bin/activate
  cd djtrump
  pip3 install -r requirements.txt
  ./manage.py migrate
  exit
EOF
