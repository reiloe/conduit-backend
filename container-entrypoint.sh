#!/bin/sh
set -e

python manage.py migrate

# Collect static files
# python manage.py collectstatic --noinput

python manage.py createsuperuser --no-input \
    --email "${DJANGO_SUPERUSER_EMAIL}" \
    --username "${DJANGO_SUPERUSER_USERNAME}"

python manage.py runserver 0.0.0.0:8080
