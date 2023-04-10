#!/bin/sh -e

if [ -f Gemfile ] ; then
  bundle install
else
  sudo chown -R 1000:1000 ./vendor/bundle

  bundle init
  bundle config --local path vendor/bundle
  rails new . --force \
              --database=postgresql \
              --skip-git \
              --css=tailwind \
              --skip-jbuilder \
              --skip-action-mailer \
              --skip-test \
              --skip-active-storage \
              --skip-action-text
fi
sudo chown -R 1000:1000 ./tmp
./bin/setup
./bin/dev
