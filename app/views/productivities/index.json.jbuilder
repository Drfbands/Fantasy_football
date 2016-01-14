json.array!(@productivities) do |productivity|
  json.extract! productivity, :id, :date
  json.url productivity_url(productivity, format: :json)
end
