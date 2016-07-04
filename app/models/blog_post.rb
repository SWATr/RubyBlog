class BlogPost < ActiveRecord::Base

  #attr_accessible :description, :image_url, :title
  has_many :comments
  has_many :blog_comments
  belongs_to :user
  
  validates :blog_title, :description, :image_url, presence: true
  validates :blog_title, uniqueness: true
end
