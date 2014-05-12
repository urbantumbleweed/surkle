json.array!(@surkles) do |surkle|
  json.extract! surkle, :id, :floorplan, :description, :location, :timestamps
  json.url surkle_url(surkle, format: :json)
end
