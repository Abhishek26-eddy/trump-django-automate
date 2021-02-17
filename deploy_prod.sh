#!/bin/sh

ssh root@3.141.38.228 <<EOF
  cd djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
