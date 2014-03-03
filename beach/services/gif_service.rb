module Beach
  class GifService
    include Beach::SlackService

    matcher "/stuff/i"

    def perform
      puts "hello"
      # SlackBot.say(channel, message)
    end

    def message
      url = get_gif.fixed_width_image.url.to_s

      if url
        "#{params.user_name} requested #{params.text}: #{url}"
      else
        "No gifs found"
      end
    end

    def username
      "gifbot"
    end

    def emoji
      ":trollface:"
    end

    private

    def get_gif
      results = Giphy.search(params.text, { limit: 50 })
      results[rand(50)]
    end
  end
end
