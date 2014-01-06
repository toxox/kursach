class RemoveAlbumIdFromSong < ActiveRecord::Migration
  def change
    remove_column :songs, :album_id, :integer
  end
end
