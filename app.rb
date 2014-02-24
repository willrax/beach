require "bundler"
Bundler.require

if Sinatra::Base.development?
  require "dotenv"
  Dotenv.load
end

require "./slack_bot"
require "./slack_params"
require "./services/base_service"

get "/test" do
  "Hello, World"
end

post "/gif" do
  slack_params = SlackParams.new(params)
  service = GifService.new(slack_params)

  SlackBot.say(slack_params, service.message)
  status 200
end
