FROM alpine:latest

COPY ./prometheus-bot /usr/bin/prometheus-bot
RUN chmod +x /usr/bin/prometheus-bot

CMD ["/usr/bin/prometheus-bot"]
