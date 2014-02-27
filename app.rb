require "bundler"
Bundler.require

if Sinatra::Base.development?
  require "dotenv"
  Dotenv.load
end

require "./slack_bot"
require "./slack_params"
require "./services/base_service"

post "/gif" do
  slack_params = SlackParams.new(params)
  slack_service = GifService.new(slack_params)

  SlackBot.say(slack_params, slack_service)
  status 200
end

post "/slap" do
  slack_params = SlackParams.new(params)
  slack_service = SlapService.new(slack_params)

  SlackBot.say(slack_params, slack_service)
  status 200
end
