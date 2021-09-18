FROM ruby:3.0.2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y yarn \
  && apt-get install -y nodejs \
  && apt-get install -y vim \
  && apt-get install -y postgresql-client \
  && apt-get install -y graphviz
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
COPY package.json .
COPY yarn.lock .
RUN bundle install
RUN yarn install
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
