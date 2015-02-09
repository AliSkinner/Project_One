class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :name
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
