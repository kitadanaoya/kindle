class AddUserToHighlight < ActiveRecord::Migration[5.1]
  def change
    add_reference :highlights, :user, foreign_key: true
  end
end
