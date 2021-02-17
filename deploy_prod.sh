#!/bin/sh

ssh root@3.141.38.228 <<EOF
  cd djtrump
  git pull
  source /root/djtrump/xyz/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  python manage.py runserver 0.0.0.0:8090
  sudo supervisorctl restart djtrump
  exit
EOF
