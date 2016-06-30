class BlogController < ApplicationController
skip_before_filter :authorize

  def index
    @posts = BlogPost.order(:post_title)
  end
end
