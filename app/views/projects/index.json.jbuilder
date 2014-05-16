json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :start_date, :due_date
  json.url project_url(project, format: :json)
end
