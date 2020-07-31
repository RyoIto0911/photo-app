class PhotosController < ApplicationController
  def index
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    @photo.save
    redirect_to photo_path(@photo)
  end

  def edit
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :body, :image)
  end

end