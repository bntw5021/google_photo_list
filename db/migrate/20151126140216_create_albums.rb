class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :album_url
      t.string :cover_url
      t.integer :count

      t.timestamps null: false
    end
  end
end
