json.extract! customer, :id, :username, :active, :url, :created_at, :updated_at
json.url customer_url(customer, format: :json)
