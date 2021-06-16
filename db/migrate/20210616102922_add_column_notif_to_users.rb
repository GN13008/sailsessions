class AddColumnNotifToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notif, :boolean
  end
end
