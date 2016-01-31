json.array!(@fits) do |fit|
  json.extract! fit, :id, :day
  json.url fit_url(fit, format: :json)
end
