class BlogCommentsController < ApplicationController
def create
        @blog_post = BlogPost.find(params[:id])
        @blog_comment = @blog_post.blog_comments.create!(params[:blog_comment])
        redirect_to @blog_post
    end
end
