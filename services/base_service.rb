class BaseService
  attr_reader :params

  require "./services/gif_service"

  def initialize(params)
    @params = params
  end

  def username
    "incoming-webhook"
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
