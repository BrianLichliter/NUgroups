class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.date :expiration
      t.string :email
      t.string :category
      t.string :tags
      t.integer :user_id
      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]
  end
end
