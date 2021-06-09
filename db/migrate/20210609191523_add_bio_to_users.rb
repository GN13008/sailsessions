class AddBioToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :name, :string
    add_column :users, :age, :string
  end
end
