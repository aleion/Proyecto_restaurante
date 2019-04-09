json.extract! comida, :id, :nombre, :precio, :detalle, :categoria, :created_at, :updated_at
json.url comida_url(comida, format: :json)
