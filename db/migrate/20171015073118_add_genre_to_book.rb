class AddGenreToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :genre, :string
  end
end
