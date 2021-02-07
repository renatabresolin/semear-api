class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :careers, class_name: 'UserCareer', inverse_of: :user
  has_many :learns, class_name: 'UserLearn', inverse_of: :user
  has_many :instructs, class_name: 'UserInstruct', inverse_of: :user

  validates :email, :name, :age, :description, presence: true

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end
end
