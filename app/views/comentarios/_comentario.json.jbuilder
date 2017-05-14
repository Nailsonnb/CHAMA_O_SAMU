json.extract! comentario, :id, :email, :descricao, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)