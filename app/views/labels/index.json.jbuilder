json.array!(@labels) do |label|
  json.extract! label, :name, :date_started
  json.url label_url(label, format: :json)
end