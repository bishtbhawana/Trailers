json.array!(@actors) do |actor|
  json.extract! actor, :id, :name, :gender, :dob, :no_of_movies, :about
  json.url actor_url(actor, format: :json)
end
