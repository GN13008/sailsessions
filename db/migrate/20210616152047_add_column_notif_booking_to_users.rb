class AddColumnNotifBookingToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notif_booking, :boolean
  end
end
