json.array!(@focus) do |focu|
  json.extract! focu, :id, :date, :notes
  json.url focu_url(focu, format: :json)
end
