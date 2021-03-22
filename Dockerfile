FROM ruby:2.7.2
RUN apt-get update
RUN apt-get install -y build-essential \
    libpq-dev \
    nodejs \
    postgresql-client
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && apt-get install -y nodejs yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register
RUN bundle install
