use Rack::Static
# from http://rubylearning.com/blog/2013/04/02/whats-rack/
# https://devcenter.heroku.com/articles/static-sites-ruby

run lambda { |env|
  [
    200,
    {},
    ["Hello. The time is #{Time.now}"]
  ]
}


# use: rackup -p $PORT -o $IP