class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  def commentdate
    self.updated_at.strftime(" on %Y-%m-%d ")
  end
  
  def username
    self.user.username
  end

end
