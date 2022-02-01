class AddColumnTo < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :date_of_release, :date
  end
end
