json.extract! post, :id, :title, :date, :activity, :distance, :elevation, :picture, :created_at, :updated_at, :duration
json.url post_url(post, format: :json)
