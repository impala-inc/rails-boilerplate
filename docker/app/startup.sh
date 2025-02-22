#!/bin/zsh -e

bundle config --local path vendor/bundle

if [ -f Gemfile ]; then
  bundle install
else
  bundle init
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

./bin/setup
./bin/dev
