class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :name,  presence: true, length: { maximum: 50 },
                    uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end
