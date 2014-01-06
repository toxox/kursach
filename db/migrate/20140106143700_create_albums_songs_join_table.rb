class CreateAlbumsSongsJoinTable < ActiveRecord::Migration
  def change
    create_table :albums_songs, id: false do |t|
      t.integer :album_id
      t.integer :song_id
    end

    add_index :albums_songs, [:album_id, :song_id]
  end
end
