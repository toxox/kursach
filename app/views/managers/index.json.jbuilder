json.array!(@managers) do |manager|
  json.extract! manager, :name, :artist_id
  json.url manager_url(manager, format: :json)
end