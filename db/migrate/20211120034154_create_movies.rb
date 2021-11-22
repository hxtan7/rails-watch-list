class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float :rating, precision: 2, scale: 2

      t.timestamps
    end
  end
end
