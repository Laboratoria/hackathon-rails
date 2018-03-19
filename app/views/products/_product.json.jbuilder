json.extract! product, :id, :name, :url, :category_id
json.url product_url(product, format: :json)
