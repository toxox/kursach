json.array!(@concerts) do |concert|
  json.extract! concert, :location, :date_held
  json.url concert_url(concert, format: :json)
end