class AddPlaylistIdToSongs < ActiveRecord::Migration[5.2]

  def change
      add_column :songs, :playlist_id, :integer
      # add col to songs, called playlist_id, of type integer
  end
end
