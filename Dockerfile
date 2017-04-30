FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev npm
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler --version '1.13.7' -N
RUN bundle _1.13.7_ install --jobs=3 --retry=3
ADD . /myapp
