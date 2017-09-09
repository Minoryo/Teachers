class UsersController < ApplicationController
  def index
    @teachers = User.get_teachers
  end

  def show
    @teacher = User.find(params[:id])
    @microposts = @teacher.microposts
    @new_micropost = @teacher.microposts.new
    @average = @teacher.get_review_average
  end
end
