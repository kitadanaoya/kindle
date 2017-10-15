class AddPublishedDateToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :published_date, :datetime
  end
end
