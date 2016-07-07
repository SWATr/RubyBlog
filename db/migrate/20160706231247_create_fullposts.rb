class CreateFullposts < ActiveRecord::Migration
  def change
    create_table :fullposts do |t|
      t.string :title
      t.text :body
      t.text :tag
      t.text :author

      t.timestamps null: false
    end
  end
end
