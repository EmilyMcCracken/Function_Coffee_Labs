json.array!(@image_pages) do |image_page|
  json.extract! image_page, :id, :webpage_id, :image_id
  json.url image_page_url(image_page, format: :json)
end
