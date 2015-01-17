json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :release_date, :rating
  json.url movie_url(movie, format: :json)
end
