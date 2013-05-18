json.array!(@albums) do |album|
  json.extract! album, :artist_id, :album_title, :genre_id, :producer_id, :date_released, :label_id
  json.url album_url(album, format: :json)
end