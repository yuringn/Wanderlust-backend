class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :hometown, :bio, :avatar, :posts_count
  has_many :posts
  
end
