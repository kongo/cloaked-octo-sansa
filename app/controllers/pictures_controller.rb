class PicturesController < ApplicationController
  def create
    @picture = Picture.new(params[:picture].permit(:album_id, :image))
    @picture.album = Album.find params[:picture][:album_id]
    if @picture.save
      redirect_to album_url(@picture.album), success: "picture was successfully created."
    else
      render :new
    end
  end
end
