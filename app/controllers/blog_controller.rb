class BlogController < ApplicationController
  def index
    @posts = BlogPost.order(:post_title)
  end
end
