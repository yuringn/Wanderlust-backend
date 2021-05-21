class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :posts
    # has_many :favorites
    # has_many :posts, through: :favorites

    has_secure_password 
    validates :username, uniqueness: { case_sensitive: false }
    validates :email , uniqueness: { case_sensitive: false}

    def posts_count
        self.posts.length
    end
    
end
