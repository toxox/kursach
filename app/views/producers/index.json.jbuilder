json.array!(@producers) do |producer|
  json.extract! producer, :name, :year_started
  json.url producer_url(producer, format: :json)
end