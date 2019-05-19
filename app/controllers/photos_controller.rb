class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photo.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:picture).permit(:picture, :caption, :place_id)
  end
end 
 