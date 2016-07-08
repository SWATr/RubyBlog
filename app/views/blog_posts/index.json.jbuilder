json.array!(@blog_posts) do |blog_post|
  json.extract! blog_post, :id, :post_title, :post_content, :post_image_url, :post_author, :post_tag
  json.url blog_post_url(blog_post, format: :json)
end
