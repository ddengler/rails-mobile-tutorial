json.array!(@todos) do |todo|
  json.extract! todo, :id, :project_id, :title, :done
  json.url todo_url(todo, format: :json)
end
