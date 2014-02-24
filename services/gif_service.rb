class GifService < BaseService
  def get_gif
    results = Giphy.search(params.text, { limit: 50 })
    results[rand(50)]
  end

  def message
    gif = get_gif
    gif.fixed_width_image.url.to_s
  end
end
