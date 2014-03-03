require "bundler"
Bundler.require

require "./beach/server"

if Sinatra::Base.development?
  require "dotenv"
  Dotenv.load
end


def run(opts)
  # EM.run do
    dispatch = Rack::Builder.app do
      map "/" do
        run Beach::Server.new
      end
    end

    Rack::Server.start({
      app:    dispatch,
      server: "thin",
      Host:   "0.0.0.0",
      Port:   4567
    })
end
# end

run app: Beach::Server.new
