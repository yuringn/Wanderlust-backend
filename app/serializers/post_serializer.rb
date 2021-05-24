class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :destination, :visit_date, :review, :pictures, :likes_count
  # , :comments_count
  has_one :user
  # has_one :location
  has_many :comments
  has_many :likes
end
