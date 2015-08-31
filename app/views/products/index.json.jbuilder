json.array!(@products) do |product|
  json.extract! product, :id, :industry_id, :third_party_id, :name, :averageNewPrice, :newPrice, :averageUsedPrice, :usedPrice, :quality, :productCredibility, :productLocation, :type, :age, :sellingTime, :bidPrice?, :description, :quantity
  json.url product_url(product, format: :json)
end
