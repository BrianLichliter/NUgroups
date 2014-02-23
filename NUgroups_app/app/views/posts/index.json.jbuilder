json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :expiration, :email, :category, :tags
  json.url post_url(post, format: :json)
end
