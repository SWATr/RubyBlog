class CreateMigrations < ActiveRecord::Migration
  def change
    create_table :migrations do |t|
      t.string :add_admin_to_users
      t.integer :admin

      t.timestamps null: false
    end
  end
end
