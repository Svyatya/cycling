class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def profile
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
