FROM heroku/cedar:14
ENV CURL_TIMEOUT 600
ENV STACK cedar-14
RUN curl https://github.com/gliderlabs/herokuish/releases/download/v0.3.8/herokuish_0.3.8_linux_x86_64.tgz \
    --silent -L | tar -xzC /bin
RUN /bin/herokuish buildpack install https://github.com/HashNuke/heroku-buildpack-elixir.git \
  && ln -s /bin/herokuish /build \
    && ln -s /bin/herokuish /start \
      && ln -s /bin/herokuish /exec
ONBUILD ADD . /app 
ONBUILD RUN touch /app/.env && set -a && . /app/.env && /build
ONBUILD RUN mkdir -p /cache
ONBUILD CMD ["/start", "web"]
