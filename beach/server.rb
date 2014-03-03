require "bundler"
Bundler.require

require "./beach/slack_bot"
require "./beach/slack_params"
require "./beach/slack_service"
require "./beach/services/slap_service"
require "./beach/services/gif_service"

module Beach
  class Server < Sinatra::Base
    services = [GifService]

    configure do
      set :threaded, true
    end

    post "/hook" do
      slack_params = SlackParams.new(params)

      services.each do |service|
        service.new(slack_params).perform if service.matcher =~ slack_params.text
      end

      status 200
    end
  end
end
