#! /bin/bash

python -m pip install pip --upgrade pip
pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate

DJANGO_SUPERUSER_PASSWORD="${DJANGO_SU_PASSWORD}" python manage.py createsuperuser --username="${DJANGO_SU_NAME}" --email="${DJANGO_SU_EMAIL}" --noinput

gunicorn conduit.wsgi:application --bind 0:8000