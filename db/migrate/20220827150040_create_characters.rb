class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.text :story
      t.string :img_url
      t.references :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
