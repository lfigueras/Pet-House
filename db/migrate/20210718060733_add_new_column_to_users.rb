class AddNewColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :breed, :string
    add_column :users, :gender, :string
    add_column :users, :birth_date, :string
  end
end
