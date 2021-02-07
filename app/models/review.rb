class Review < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: "User", dependent: :destroy
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }

  def score(ratings)
    count = 0
    ratings.each do |rating|
      rating += count
    end
    count
  end

  def user_level
    case self.rating.score
    when condition == 50 then @user.user_level == 'Flor'
    when condition == 30...50 then @user.user_level == 'Broto'
    when condition <= 20 then @user.user_level == 'Semente'
    end
  end
end
