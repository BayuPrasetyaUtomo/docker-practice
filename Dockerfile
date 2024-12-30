FROM alpine:latest

COPY script.sh /app/script.sh
COPY crontab /etc/crontabs/root

RUN chmod +x /app/script.sh

RUN apk add --no-cache busybox-suid dos2unix nano && \
    dos2unix /app/script.sh && \
    crontab /etc/crontabs/root

WORKDIR /app

CMD ["crond", "-f"]