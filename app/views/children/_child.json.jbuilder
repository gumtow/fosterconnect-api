json.extract! child, :id, :name, :status, :pictures, :documents, :created_at, :updated_at
json.url child_url(child, format: :json)
