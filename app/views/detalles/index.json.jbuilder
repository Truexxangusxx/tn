json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :producto_id, :columna_id, :valor
  json.url detalle_url(detalle, format: :json)
end
