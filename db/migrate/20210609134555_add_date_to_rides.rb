class AddDateToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :date, :date
  end
end
