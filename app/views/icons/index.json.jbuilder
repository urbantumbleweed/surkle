json.array!(@icons) do |icon|
  json.extract! icon, :id, :name, :image
  json.url icon_url(icon, format: :json)
end
