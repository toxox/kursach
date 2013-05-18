json.array!(@artists) do |artist|
  json.extract! artist, :name, :date_started, :n_of_participants
  json.url artist_url(artist, format: :json)
end