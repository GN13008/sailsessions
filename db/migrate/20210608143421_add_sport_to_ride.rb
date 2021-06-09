class AddSportToRide < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :sport
    add_reference :rides, :sport, index: true
  end
end
