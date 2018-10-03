class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|  # t for table
      t.text :name
      t.timestamps null: false
    end
  end
end
