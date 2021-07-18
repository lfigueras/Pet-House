class AddIdToBody < ActiveRecord::Migration[6.1]
  def change
    add_column :bodies, :user_id, :integer
  end
end
