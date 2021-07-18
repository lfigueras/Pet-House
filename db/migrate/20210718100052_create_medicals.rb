class CreateMedicals < ActiveRecord::Migration[6.1]
  def change
    create_table :medicals do |t|

      t.timestamps
    end
  end
end
