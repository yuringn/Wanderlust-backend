class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :commentdate, :username
  has_one :user
  has_one :post
end
