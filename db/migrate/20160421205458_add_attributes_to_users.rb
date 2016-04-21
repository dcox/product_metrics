class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :title, :string
    add_column :users, :about, :string
  end
end
