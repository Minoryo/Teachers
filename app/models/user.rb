class User < ApplicationRecord
  has_many :microposts, dependent: :destroy

  def self.get_teachers
    self.where(teacher_flg: true) 
  end

  def get_review_average
    microposts.group(:user_id).average(:review).values[0]
  end
end
