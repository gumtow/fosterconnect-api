json.extract! messageboard, :id, :subject, :content, :status, :created_at, :updated_at
json.url messageboard_url(messageboard, format: :json)
