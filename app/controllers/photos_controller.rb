class PhotosController < ApplicationController

  def new
    @photo = Photo.new
   end

 def create
  @photo = Photo.new(photo_params)
  if @photo.save
    flash[:notice] = "Picture Uploaded"
    redirect_to place_photos_path
  else
    render 'new'
  end
end


  def index
  @photos= Photo.all
  end

  def show
  end

  private
  def photo_params
  params.require(:photo).permit(:picture, :caption)
  end
end


