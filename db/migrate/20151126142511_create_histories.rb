class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :update_date, null: false
      t.integer :count, null: false, default: 0
      t.references :album_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
