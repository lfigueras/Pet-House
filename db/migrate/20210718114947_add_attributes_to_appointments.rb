class AddAttributesToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :owner_name, :string
    add_column :appointments, :pet_name, :string
    add_column :appointments, :reason, :string
    add_column :appointments, :date, :string
    add_column :appointments, :time, :string
  end
end
