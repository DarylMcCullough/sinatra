#(Nancy) Sinatra
This is an implementation of Sinatra using Rack. It is based on the tutorial [Let's Build a Sinatra](https://robots.thoughtbot.com/lets-build-a-sinatra). Some changes were needed in order for
it to work correctly on Cloud 9. Rather than directly running an instance of Nancy::Base, it is run inside config.ru. That is run by issuing the command

```
rackup -p $PORT -o $IP
```

Only certain ports are allowed in Cloud 9.

In the original tutorial, there is an instance of `Nancy::Base` that is created and run. In this version, instead, there is a class method: `Nancy::Base.nancy` that returns an instance. In
`config.ru`, this is run. Another difference with the tutorial is that instead of calling  `Rack::Handler::WEBrick.run`, config.ru only calls `run`. I am not sure about the significance of
the difference. I think that the command `rackup` uses `WEBrick`, but I'm not positive whether this combination is equivalent.