json.array!(@supperplaces) do |supperplace|
  json.extract! supperplace, :id, :address, :website, :crusine, :phone, :open, :close, :state
  json.url supperplace_url(supperplace, format: :json)
end
