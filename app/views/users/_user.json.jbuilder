json.extract! user, :id, :name, :bio, :subject, :nacionality, :created_at, :updated_at
json.url user_url(user, format: :json)
