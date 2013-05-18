class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :artist_id
      t.string :album_title
      t.integer :genre_id
      t.integer :producer_id
      t.date :date_released
      t.integer :label_id

      t.timestamps
    end
  end
end
