class CreateBookGenres < ActiveRecord::Migration
  def change
  	drop_table :book_genres
    create_table :book_genres do |t|
      t.references :book, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
