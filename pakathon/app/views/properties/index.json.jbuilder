json.array!(@properties) do |property|
  json.extract! property, :id, :title, :desctiption, :lat, :lng
  json.url property_url(property, format: :json)
end
