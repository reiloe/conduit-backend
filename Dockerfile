FROM python:3.6.2-slim

WORKDIR /app

COPY . $WORKDIR

EXPOSE 8000

ENTRYPOINT ["/bin/bash", "setup.sh"]