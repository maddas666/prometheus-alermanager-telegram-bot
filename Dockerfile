FROM alpine:latest

RUN mkdir /bot
COPY ./prometheus_bot /bot
COPY ./config.yaml /bot
RUN chmod +x /bot/prometheus_bot

ENTRYPOINT ["/bot/prometheus_bot"]

CMD ["/bot/prometheus_bot"]
