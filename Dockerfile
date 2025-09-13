FROM ruby:3.3.1

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm postgresql-client && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN bundle exec rake assets:precompile 2>/dev/null || true
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]