#!/bin/sh

ssh root@18.224.33.239 <<EOF
  cd djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
