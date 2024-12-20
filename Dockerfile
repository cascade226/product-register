FROM ruby:3.3.6
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install