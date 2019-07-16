json.shops do
  json.array! @shops, :id, :name, :products
end

json.products do
  json.array! @products, :title, :text, :price, :image, :id
end
