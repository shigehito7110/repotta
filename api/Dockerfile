FROM ruby:3.1

ENV DIR=/usr/app
WORKDIR ${DIR}
RUN cd ${DIR}

##COPY ./api/Gemfile ./Gemfile
##COPY ./api/Gemfile.lock ./Gemfile.lock
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN gem update --system && gem install bundler -v 2.3.25
RUN bundle config set --local path 'vendor/bundle'
##RUN bundle install -j4
