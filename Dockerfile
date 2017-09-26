FROM ruby:2.4-alpine
RUN apk add --no-cache build-base
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install
COPY . /usr/src/app
CMD ["jekyll", "serve", "--host=0.0.0.0"]
