class AlbumsController < ApplicationController
  before_action :authenticate_user!

  def index
    @albums = current_user.albums
  end

  def create
    a = Album.new(params[:album].permit(:title))
    a.user = current_user
    a.save!
    flash[:success] = "Album created"
    redirect_to albums_path
  end

end
