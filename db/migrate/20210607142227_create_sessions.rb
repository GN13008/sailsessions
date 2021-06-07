class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :from
      t.string :spot
      t.date :start_date
      t.date :end_date
      t.string :title
      t.integer :nb_of_place
      t.string :sport
      t.string :exchange_item
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
