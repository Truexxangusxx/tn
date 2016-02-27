json.array!(@columnas) do |columna|
  json.extract! columna, :id, :nombre
  json.url columna_url(columna, format: :json)
end
