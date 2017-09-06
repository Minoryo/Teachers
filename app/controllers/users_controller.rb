class UsersController < ApplicationController
  def index
    @teachers = User.get_teachers
  end

  def show
    @teacher = User.find(params[:id])
  end
end
