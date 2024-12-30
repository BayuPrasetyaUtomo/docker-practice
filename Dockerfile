FROM alpine:latest

COPY script.sh /app/script.sh

RUN chmod +x /app/script.sh

WORKDIR /app

CMD ["./app/script.sh"]