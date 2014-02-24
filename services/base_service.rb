class BaseService
  attr_reader :params

  require "./services/gif_service"

  def initialize(params)
    @params = params
  end
end
