class CreateBodies < ActiveRecord::Migration[6.1]
  def change
    create_table :bodies do |t|

      t.timestamps
    end
  end
end
