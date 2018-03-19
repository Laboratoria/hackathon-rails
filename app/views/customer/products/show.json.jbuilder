json.products do
  json.partial! 'products/product', product: @product
end
