json.array!(@publics) do |public|
  json.extract! public, :id
  json.url public_url(public, format: :json)
end
