class VideosController < ApplicationController
  def index
    @video_items = Video.all
  end
  def new
    @video_item = Video.new
  end
  def create
    @video = Video.new(params.require(:video).permit(:title, :body))

    respond_to do |format|
      if @video.save
        format.html { redirect_to videos_path, notice: 'Video portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end





end
