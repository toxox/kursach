class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :location
      t.date :date_held

      t.timestamps
    end
  end
end
