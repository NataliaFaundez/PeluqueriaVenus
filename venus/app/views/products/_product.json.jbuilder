json.extract! product, :id, :codigo_producto, :nombre, :precio, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)