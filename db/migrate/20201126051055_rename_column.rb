class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :stylists, :email_address, :email

  end
end
