class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  # def username
  #   self.user.username
  # end

  def likes_count
    self.likes.length
  end

  def comments_count
    self.comments.length
  end

  def destination
    self.location.country
  end
  
end
