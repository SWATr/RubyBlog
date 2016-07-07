class AddTagsToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :post_tag, :string
  end
end
