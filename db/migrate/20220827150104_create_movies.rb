class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :creation_date
      t.integer :rate
      t.belongs_to :character, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
