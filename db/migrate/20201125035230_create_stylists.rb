class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|
      t.string :username
      t.string :name
      t.string :email_address
      t.string :password_digest

      t.timestamps
    end
  end
end
