#!/bin/sh

ssh root@18.224.33.239 <<EOF
  cd trump-django-automate
  git pull
  source /opt/envs/trump-django-automate/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  exit
EOF
