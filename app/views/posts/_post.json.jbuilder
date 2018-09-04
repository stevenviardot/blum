json.extract! post, :id, :title, :description, :location, :created_at, :updated_at
json.url post_url(post, format: :json)
