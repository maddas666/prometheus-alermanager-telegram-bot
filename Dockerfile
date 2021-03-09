FROM alpine:latest
ENV TEMPLATE_PATHS=/templates/default.tmpl

COPY ./default.tmpl /templates/default.tmpl
COPY ./prometheus-bot /usr/bin/prometheus-bot
RUN chmod +x /usr/bin/prometheus-bot

CMD ["/usr/bin/prometheus-bot"]
