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

  def edit
    @video_item = Video.find(params[:id])
  end

  def update
    @video_item = Video.find(params[:id])
    respond_to do |format|
      if @video_item.update(params.require(:video).permit(:title, :body))
        format.html { redirect_to videos_path, notice: 'This video log was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    
  end





end
