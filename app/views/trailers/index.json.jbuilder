json.array!(@trailers) do |trailer|
  json.extract! trailer, :id, :video_link, :views
  json.url trailer_url(trailer, format: :json)
end
