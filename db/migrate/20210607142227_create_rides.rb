class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :from
      t.string :spot
      t.time :start_time
      t.time :end_time
      t.string :title
      t.text :description, default: "Cette session n'a pas de description. Veuillez contacter l'organisateur pour plus d'informations!"
      t.integer :nb_of_place
      t.string :exchange_item
      t.string :sport
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
