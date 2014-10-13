json.array!(@races) do |race|
  json.extract! race, :id, :nome
  json.url race_url(race, format: :json)
end
