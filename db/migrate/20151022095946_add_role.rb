class AddRole < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: 'author'
  end
end
