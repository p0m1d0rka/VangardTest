FROM ruby:2.6.2

WORKDIR /app
COPY ./ .

ARG secret_token
ENV RAILS_ENV production
ENV SECRET_TOKEN=$secret_token

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -qy nodejs
RUN gem install bundler -v '1.17.3'
RUN bundle install
RUN cp config/database.yml.sample config/database.yml
RUN rake assets:precompile

CMD rails db:migrate && rails server -b 0.0.0.0
