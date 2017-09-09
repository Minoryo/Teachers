class MicropostsController < ApplicationController

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    end
  end

  private

    def micropost_params
        params.require(:micropost).permit(:user_id, :content)
    end
end
