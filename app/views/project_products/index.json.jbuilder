json.array!(@project_products) do |project_product|
  json.extract! project_product, :id, :project_id, :product_id, :quantity, :subtotal
  json.url project_product_url(project_product, format: :json)
end
