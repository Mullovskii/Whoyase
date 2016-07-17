json.array!(@heros) do |hero|
  json.extract! hero, :id, :name, :about, :ip
  json.url hero_url(hero, format: :json)
end
