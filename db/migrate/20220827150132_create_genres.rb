class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.belongs_to :movie, null: false, foreign_key: true
      t.string :img_url
      t.references :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
