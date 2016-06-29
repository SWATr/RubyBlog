class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :post_title
      t.text :post_content
      t.string :post_image_url
      t.string :post_author
      t.timestamp :post_time

      t.timestamps null: false
    end
  end
end
