json.array!(@headers) do |header|
  json.extract! header, :id, :text, :webpage_id
  json.url header_url(header, format: :json)
end
