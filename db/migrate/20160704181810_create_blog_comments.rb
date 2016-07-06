class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.references :blog_post, index: true, foreign_key: true
      t.text :body
      t.string :comment_author

      t.timestamps null: false
    end
  end
end
