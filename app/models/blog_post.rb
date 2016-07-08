class BlogPost < ActiveRecord::Base

  #attr_accessible :description, :image_url, :title
  has_many :comments
  has_many :blog_comments
  belongs_to :user
  
  validates :post_title, :post_content, :post_author, presence: true
  validates :post_title, uniqueness: true
  
  validates :tag, acceptance: { accept: 'Food' }, acceptance: { accept: 'DIY' }, acceptance: { accept: 'Vidoes' }, acceptance: { accept: 'News' }

end
