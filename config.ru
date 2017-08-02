require 'rack'
require './nancy'

# from http://rubylearning.com/blog/2013/04/02/whats-rack/
# https://devcenter.heroku.com/articles/static-sites-ruby
# https://robots.thoughtbot.com/lets-build-a-sinatra

run Nancy::Base.nancy

