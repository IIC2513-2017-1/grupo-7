json.extract! historial_compra, :id, :compra_id, :producto_id, :usuario_id, :cantidad, :total, :created_at, :updated_at
json.url historial_compra_url(historial_compra, format: :json)
