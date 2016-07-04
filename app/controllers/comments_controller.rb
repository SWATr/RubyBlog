class CommentsController < ApplicationController
    def create
        @blog_post = BlogPost.find(params[:id])
        @comment = @blog_post.comments.create!(params[:comment])
        redirect_to @blog_post
    end
end

