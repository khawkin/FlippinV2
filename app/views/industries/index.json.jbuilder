json.array!(@industries) do |industry|
  json.extract! industry, :id, :category
  json.url industry_url(industry, format: :json)
end
