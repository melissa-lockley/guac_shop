json.array!(@guacs) do |guac|
  json.extract! guac, :id, :name, :avacado, :mixins, :time_to_make, :cost, :date_created, :time_put_in
  json.url guac_url(guac, format: :json)
end
