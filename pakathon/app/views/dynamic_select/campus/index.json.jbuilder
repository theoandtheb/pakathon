json.array!(@campus) do |campu|
  json.extract! campu, :name, :id
end