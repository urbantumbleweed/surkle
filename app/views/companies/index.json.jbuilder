json.array!(@companies) do |company|
  json.extract! company, :id, :name, :location, :logo_file_name
  json.url company_url(company, format: :json)
end
