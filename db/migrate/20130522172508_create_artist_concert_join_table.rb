class CreateArtistConcertJoinTable < ActiveRecord::Migration
  def change
    create_table :artists_concerts, :id => false do |t|
      t.integer :artist_id
      t.integer :concert_id
    end
  end
end
