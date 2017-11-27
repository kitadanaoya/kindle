class Like < ApplicationRecord
  belongs_to :highlight
  belongs_to :user
  
  validates_uniqueness_of :highlight_id, scope: :user_id
end
