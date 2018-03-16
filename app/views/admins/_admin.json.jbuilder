json.extract! admin, :id, :username, :active, :url, :created_at, :updated_at
json.url admin_url(admin, format: :json)
