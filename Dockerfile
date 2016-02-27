FROM heroku/cedar:14
ENV CURL_TIMEOUT 600
ENV STACK cedar-14
RUN curl https://github.com/gliderlabs/herokuish/releases/download/v0.3.8/herokuish_0.3.8_linux_x86_64.tgz \
    --silent -L | tar -xzC /bin
RUN /bin/herokuish buildpack install \
  && ln -s /bin/herokuish /build \
    && ln -s /bin/herokuish /start \
      && ln -s /bin/herokuish /exec
ADD . /app
RUN /build
RUN mkdir -p /cache
