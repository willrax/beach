Beach
============

Expect things to change as I work on this. This app contains a gem that is powered by Giphy. It's your responsibility to get a production API if you want to use this fully. Otherwise switch out the gem and change the gif service. 

![dance](http://c.willrax.com/U5ss/Screen%20Shot%202014-02-25%20at%207.33.33%20am.png)

Small Sinatra app to host webhook services for slack.com

Easiest to host on heroku.

You'll need to set two environment variables once you've deployed in order for the services to work.

```bash
heroku config:set BASE_URL=beach.slack.com
heroku config:set TOKEN=dsahjd7321dal92
```

The token represents the incoming webhooks integration token that you'll get when you set it up.

## Adding your own services.

Add your endpoint to `app.rb` and create your service under `/services` make sure to inherit from `BaseService`.

You can use `SlackParams` and `SlackBot` to help. `SlackParams` is just a simple wrapper around the params that come
with each message to the server from slack.com and can be used in your service.
