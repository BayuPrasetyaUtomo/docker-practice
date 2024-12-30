FROM alpine:latest

COPY script.sh /app/script.sh
COPY crontab /etc/crontabs/root

RUN apk add --no-cache busybox-suid dos2unix nano && \
    dos2unix /app/script.sh && \
    chmod +x /app/script.sh && \
    crontab /etc/crontabs/root && \
    ls -l /app/script.sh && \
    cat /app/script.sh

WORKDIR /app

CMD ["crond", "-f"]