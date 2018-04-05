json.extract! product, :id, :name, :url, :quantity, :amount, :category_id
json.url product_url(product, format: :json)
