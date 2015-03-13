json.array!(@spiders) do |spider|
  json.extract! spider, :id, :species, :venemous, :spider_id, :description
  json.url spider_url(spider, format: :json)
end
