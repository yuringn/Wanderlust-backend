class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  def commentdate
    self.created_at.strftime(" on %Y/%m/%d ")
  end
  
end
