class AddUserIdToMedical < ActiveRecord::Migration[6.1]
  def change
    add_column :medicals, :user_id, :integer
  end
end
