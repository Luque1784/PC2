class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.references :artist

      t.timestamps
    end
    add_index :albums, :artist_id
  end
end
