json.array!(@affiliations) do |affiliation|
  json.extract! affiliation, :id, :title, :desctiption
  json.url affiliation_url(affiliation, format: :json)
end
