#!/bin/sh

ssh root@3.138.172.68 <<EOF
  cd trump-django-automate
  git pull
  source /envs/bin/activate
  pip3 install -r requirements.txt
  ./manage.py migrate
  exit
EOF
