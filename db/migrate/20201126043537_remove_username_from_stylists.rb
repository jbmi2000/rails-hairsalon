class RemoveUsernameFromStylists < ActiveRecord::Migration[6.0]
  def change
    remove_column :stylists, :username, :string
  end
end
