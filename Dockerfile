FROM elixir:1.8.2-alpine as builder

RUN apk update && \
  apk add postgresql-client git nodejs npm

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar

CMD ["/bin/bash"]
