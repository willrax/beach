class SlackBot
  include HTTParty

  def self.say(params, message)
    url = "https://#{ENV['BASE_URL']}/services/hooks/incoming-webhook?token=#{ENV['TOKEN']}"

    body = {
      "channel" => "#{params.channel_id}",
      "username" => "GifBot",
      "text" => message,
      "icon_emoji" => ":trollface:"
    }.to_json

    puts HTTParty.post(url, { body: body })
  end
end
