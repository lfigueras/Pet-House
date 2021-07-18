class AddNewColumnToBody < ActiveRecord::Migration[6.1]
  def change
    add_column :bodies, :coat_color, :string
    add_column :bodies, :fur_type, :string
    add_column :bodies, :eye_color, :string
    add_column :bodies, :length_height, :string
    add_column :bodies, :weight, :string
    add_column :bodies, :special_markings, :string
  end
end
