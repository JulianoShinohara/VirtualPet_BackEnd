json.extract! user_pet, :id, :user_id, :pet_id, :created_at, :updated_at
json.url user_pet_url(user_pet, format: :json)
