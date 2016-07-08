# Public: Users of the blog
# A user will have a password and a unique email
# A user will be able to create many blog posts
class User < ActiveRecord::Base
has_secure_password

validates :email, format: { :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ } , presence: true, uniqueness: true

end

