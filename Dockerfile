FROM ruby:3.0.6-slim

WORKDIR /srv/slate

VOLUME /srv/slate/build
VOLUME /srv/slate/source

EXPOSE 4567

COPY Gemfile .
COPY Gemfile.lock .

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        git \
        nodejs \
    && gem install bundler \
    && bundle install \
    && apt-get remove -y build-essential git \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /srv/slate

RUN chmod +x /slate.sh

ENTRYPOINT ["slate.sh "]
CMD ["build"]
