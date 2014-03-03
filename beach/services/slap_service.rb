module Beach
  class SlapService
    include Beach::SlackService

    def message
      "#{username} slaps #{params.text}"
    end

    def username
      "slapbot"
    end

    def emoji
      ":fist:"
    end
  end
end
