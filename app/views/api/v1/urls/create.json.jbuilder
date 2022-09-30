json.message 'Url saved successfully'
json.data do
  json.(@url, :id, :original_url)
  json.shortened_url visit_url(@url.short_url)
end
