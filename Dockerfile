FROM ruby
RUN gem install nanoc -v 3.6.6
ADD . /code
WORKDIR /code
CMD nanoc compile
