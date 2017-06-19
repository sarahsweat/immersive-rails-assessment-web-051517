class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
    @user = current_user
  end

  def create
    @appearance = Appearance.new(params.require(:appearance).permit(:guest_id, :episode_id, :rating))
      if @appearance.save
        redirect_to appearance_path(@appearance)
      else
        redirect_to appearances_path
      end
  end
end
