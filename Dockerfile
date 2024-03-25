FROM python:3.5-alpine

WORKDIR /app

COPY . $WORKDIR

ENV DJANGO_SUPERUSER_USERNAME="admin" \
    DJANGO_SUPERUSER_EMAIL="admin@mail.com" \
    DJANGO_SUPERUSER_PASSWORD="admin"

RUN pip install -r requirements.txt \
    && chmod +x /app/container-entrypoint.sh

EXPOSE 8080

ENTRYPOINT [ "/bin/sh", "-c", "/app/container-entrypoint.sh" ]