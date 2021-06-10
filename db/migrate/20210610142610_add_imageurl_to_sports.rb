class AddImageurlToSports < ActiveRecord::Migration[6.0]
  def change
    add_column :sports, :image_url, :string
  end
end
