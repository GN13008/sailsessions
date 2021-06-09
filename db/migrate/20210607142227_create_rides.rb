class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :from
      t.string :spot
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.integer :nb_of_place
      t.string :exchange_item
      t.string :sport
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
