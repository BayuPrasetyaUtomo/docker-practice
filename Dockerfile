FROM alpine:latest

COPY script.sh /app/script.sh
COPY crontab /etc/crontabs/root

RUN chmod +x /app/script.sh

RUN apk add --no-cache busybox-suid && \
    apk add --no-cache nano && \
    crontab /etc/crontabs/root

WORKDIR /app

CMD ["crond", "-f"]