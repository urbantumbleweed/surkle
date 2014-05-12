json.array!(@iconups) do |iconup|
  json.extract! iconup, :id, :session, :product, :icon, :description, :notes
  json.url iconup_url(iconup, format: :json)
end
