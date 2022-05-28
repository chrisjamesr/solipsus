class User < ApplicationRecord
    # has_many :user_posts
    # has_many :posts, :through => user_posts
    has_many :posts
  
    has_secure_password
  
    validates :username, presence: true, allow_blank: false
    validates :username, uniqueness: {case_sensitive: false}
    validates :email, presence: true, allow_blank: false
    validates :email, uniqueness: {case_sensitive: false}
    validates :password, presence: true, allow_blank: false, on: :create
    validates_format_of :email, with: /@/
end