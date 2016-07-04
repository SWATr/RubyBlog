# Public: Users of the blog
# A user will have a password and a unique email
# A user will be able to create many blog posts
class User < ActiveRecord::Base
has_secure_password
has_many :blog_posts

validates :email, presence: true, uniqueness: true

end

