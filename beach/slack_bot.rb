module Beach
  class SlackBot
    include HTTParty

    def self.say(params, service)
      url = "https://#{ENV['BASE_URL']}/services/hooks/incoming-webhook?token=#{ENV['TOKEN']}"

      body = {
        "channel" => service.channel_id,
        "username" => service.username,
        "text" => service.message,
        "icon_emoji" => service.emoji
      }.to_json

      puts HTTParty.post(url, { body: body })
    end
  end
end
