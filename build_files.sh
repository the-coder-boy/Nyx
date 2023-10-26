#!/bin/bash

echo "Building Nyx ... "
python3.9 -m pip install -r requirements.txt

python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echp "Collecting static "
python3.9 manage.py collectstatic --no-input --clear