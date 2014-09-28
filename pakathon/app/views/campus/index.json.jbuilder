json.array!(@campus) do |campu|
  json.extract! campu, :id, :name, :address, :latitude, :longitude
  json.url campu_url(campu, format: :json)
end
