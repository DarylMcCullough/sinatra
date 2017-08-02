# From http://gabebw.com/blog/2015/08/10/advanced-rack
# cool_rack_application.rb
require "rack/ssl"

class CoolRackApplication
  def call(env)
    http_verb = env["REQUEST_METHOD"]
    status = 200
    headers = {}
    body = ["yabbadabbado! got #{http_verb} request\n"]

    [status, headers, body]
  end
end

# Run on localhost, port 9292
Rack::Handler::WEBrick.run(CoolRackApplication.new)
