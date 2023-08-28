FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /myapp

# ローカルからコンテナにファイルをコピー
COPY Gemfile Gemfile.lock /myapp/
RUN bundle install
COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
