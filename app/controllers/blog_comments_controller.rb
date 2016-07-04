class BlogCommentsController < ApplicationController
def create
        @blog_post = BlogPost.find(params[:blog_post_id])
        @blog_comment = @blog_post.blog_comments.create!(params[:blog_comment])
        redirect_to @blog_post
    end
	
	private
	def blog_comment_params
      params.require(:blog_comment).permit(:blog_post_id, :body)
    end
end
