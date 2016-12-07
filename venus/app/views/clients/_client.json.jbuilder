json.extract! client, :id, :rut, :nombre, :telefono, :codigo_servicio, :monto_gastado, :created_at, :updated_at
json.url client_url(client, format: :json)