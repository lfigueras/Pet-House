class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pet_name, :string
    add_column :users, :owner, :string
    add_column :users, :contact, :string
    add_column :users, :address, :string
  end
end
