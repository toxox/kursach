class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :date_started
      t.integer :n_of_participants

      t.timestamps
    end
  end
end
