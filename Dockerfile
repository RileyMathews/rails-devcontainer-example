FROM ruby:2.6

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

WORKDIR /workspace

COPY Gemfile /workspace/
COPY Gemfile.lock /workspace/

RUN bundle install

COPY . /workspace/
EXPOSE 3000
CMD ["rails", "s", "-b", "0.0.0.0"]