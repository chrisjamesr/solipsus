class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # validates :user_id, :post_id, :presence => true
  # validates :user_id, :uniqueness => {:scope => :event_id}

  # def toggle_like
  #   self.update(like: !self.like)
  # end
end
