class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :stylist_id
      t.integer :client_id
      t.string :date

      t.timestamps
    end
  end
end
