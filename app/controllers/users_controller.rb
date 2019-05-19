class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user.photos.attach(params[:photos])
  end
end
