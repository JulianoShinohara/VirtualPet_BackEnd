json.extract! user, :id, :login, :senha, :created_at, :updated_at
json.url user_url(user, format: :json)
