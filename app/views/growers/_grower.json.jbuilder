json.extract! grower, :id, :first_name, :last_name, :phone_number, :email, :created_at, :updated_at
json.url grower_url(grower, format: :json)
