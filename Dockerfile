FROM alpine:latest
RUN apk add --no-cache nodejs \
  && npm install -g --ignore-scripts tldr \
  && tldr --update
COPY .tldrrc /root/.tldrrc
