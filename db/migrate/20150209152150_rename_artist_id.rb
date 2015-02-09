class RenameArtistId < ActiveRecord::Migration
  def change
    rename_column :songs, :artist_id, :user_id
  end
end
