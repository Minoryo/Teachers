class User < ApplicationRecord
  def self.get_teachers
    self.where(teacher_flg: true)
  end
end
