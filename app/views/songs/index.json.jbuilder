json.array!(@songs) do |song|
  json.extract! song, :album_id, :song_title, :song_duration
  json.url song_url(song, format: :json)
end