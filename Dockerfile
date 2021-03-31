FROM ruby:2.7
WORKDIR /usr/src/app

# ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
# ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler

COPY ./details/ /usr/src/app
# COPY ./hosts /etc


 RUN bundle install

EXPOSE 8080
CMD [ "ruby","/usr/src/app/details.rb","8080" ]