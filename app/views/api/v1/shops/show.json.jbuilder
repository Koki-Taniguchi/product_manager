json.shop do
  json.name  @shop.name
  json.products do
    json.array! @shop.products, :title, :text, :price, :image, :id
  end
end
