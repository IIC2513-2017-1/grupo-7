json.extract! comentario, :id, :user_id, :integer, :content, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
