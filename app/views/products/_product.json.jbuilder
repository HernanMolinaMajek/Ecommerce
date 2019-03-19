json.extract! product, :id, :nombre, :descripcion, :precio, :cantidad, :created_at, :updated_at
json.url product_url(product, format: :json)
