class ChangeUsers < ActiveRecord::Migration
  def change
  	add_column :users, :uid, :string
  	add_column :users, :oauth_token, :string
  	remove_column :users, :name, :string
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  end
end
