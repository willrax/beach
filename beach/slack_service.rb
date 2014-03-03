module Beach
  module SlackService
    attr_reader :params

    extend self

    def self.matcher(regex)
    end

    def initialize(params)
      @params = params
    end

    def username
      "bot-with-no-name"
    end

    def emoji
      ":ghost:"
    end

    def message
      "No message was set for your service"
    end

    def channel_id
      params.channel_id
    end
  end
end
