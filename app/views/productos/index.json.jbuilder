json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :imagen
  json.url producto_url(producto, format: :json)
end
