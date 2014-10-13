json.array!(@animals) do |animal|
  json.extract! animal, :id, :age, :peso, :race_id
  json.url animal_url(animal, format: :json)
end
