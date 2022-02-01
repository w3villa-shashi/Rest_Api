class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :category
      t.string :language
      t.string :duration
      t.string :director
      t.timestamps
    end
  end
end
