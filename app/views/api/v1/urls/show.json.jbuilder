json.message 'Your url'
json.data do
  json.(@url, :id, :original_url)
  json.shortened_url visit_url(@url.short_url)
  json.visits_count @url.visits_count
end