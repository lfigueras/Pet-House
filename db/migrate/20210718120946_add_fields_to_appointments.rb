class AddFieldsToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :phone_number, :string
    add_column :appointments, :additional_information, :string
  end
end
