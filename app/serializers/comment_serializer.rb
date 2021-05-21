class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :commentdate
  has_one :user
  has_one :post
end
