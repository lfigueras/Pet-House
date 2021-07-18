class AddAttributesToMedical < ActiveRecord::Migration[6.1]
  def change
    add_column :medicals, :sterilization, :boolean, default: false
    add_column :medicals, :allergies, :string
    add_column :medicals, :others, :string
    add_column :medicals, :sterilization_date, :string
    add_column :medicals, :clinic, :string
  end
end
