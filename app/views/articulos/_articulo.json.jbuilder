json.extract! articulo, :id, :name, :user_id, :stock, :precio, :descripcion, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
