json.array!(@third_parties) do |third_party|
  json.extract! third_party, :id, :name, :url, :profit, :credibility, :surcharge, :shipping?, :shippingCost, :visitorCount, :rating, :vendor?
  json.url third_party_url(third_party, format: :json)
end
