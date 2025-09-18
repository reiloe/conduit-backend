FROM python:3.6.2-slim

WORKDIR /app

COPY . $WORKDIR

EXPOSE "${BACKEND_PORT}"

ENTRYPOINT ["/bin/bash", "setup.sh"]