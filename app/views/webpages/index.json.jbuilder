json.array!(@webpages) do |webpage|
  json.extract! webpage, :id, :name, :type
  json.url webpage_url(webpage, format: :json)
end
