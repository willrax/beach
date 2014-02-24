Beach
============

Expect things to change as I work on this.

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
