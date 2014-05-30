class PicturesController < ApplicationController
  def create
    pic_params = params.require(:picture).permit(:album_id, :image)
    @picture = Picture.new(pic_params)
    @picture.save
    render nothing: true
  end
end
