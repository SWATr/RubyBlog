json.array!(@fullposts) do |fullpost|
  json.extract! fullpost, :id, :title, :body, :tag, :author
  json.url fullpost_url(fullpost, format: :json)
end
