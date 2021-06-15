class AddEchangeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :echange, :string
  end
end
