FROM ruby:2.6.3

RUN apt-get update

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -\
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn

RUN mkdir /vueshop
WORKDIR /vueshop
ADD Gemfile /vueshop/Gemfile
ADD Gemfile.lock /vueshop/Gemfile.lock
RUN gem install bundler:2.1.4
RUN bundle install

ADD . /vueshop
