class AddContentToHighlight < ActiveRecord::Migration[5.1]
  def change
    add_column :highlights, :content, :text
  end
end
