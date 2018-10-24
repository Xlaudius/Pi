FROM ruby:2.5.1

LABEL Name=pi Version=0.0.1
EXPOSE 3000

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
    