FROM erlang:21.0.4-alpine

ARG ELIXIR_VERSION=1.7.1-otp-21

RUN set -xe \
  && apk add --no-cache curl unzip \
  && curl -fSL -o elixir-precompiled.zip https://repo.hex.pm/builds/elixir/v$ELIXIR_VERSION.zip \
  && unzip -d /usr/local elixir-precompiled.zip \
  && rm elixir-precompiled.zip \
  && apk del curl unzip \
  && mix local.hex --force \
  && mix local.rebar --force

WORKDIR /opt/app
ENV MIX_ENV=prod

RUN mkdir -p \
    apps/with_number \
    apps/with_jason \
    apps/with_with_jason
COPY mix.exs mix.lock ./
COPY apps/with_number/mix.exs apps/with_number/
COPY apps/with_jason/mix.exs apps/with_jason/
COPY apps/with_with_jason/mix.exs apps/with_with_jason/

RUN mix deps.get && mix deps.compile && MIX_ENV=test mix deps.compile

COPY . .
RUN mix compile && MIX_ENV=test mix compile

CMD ["mix", "cmd", "mix", "test"]
