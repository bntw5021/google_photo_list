class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :album_url, null: false
      t.string :cover_url, null: false
      t.integer :count, null: false, default: 0

      t.timestamps null: false
    end
  end
end
