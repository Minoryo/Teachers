class UsersController < ApplicationController
  def index
    @teachers = User.get_teachers
  end

  def show
    @teacher = User.find(params[:id])
    @microposts = @teacher.microposts
    @average = @teacher.get_review_average
  end
end
