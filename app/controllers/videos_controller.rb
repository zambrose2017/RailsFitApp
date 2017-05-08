class VideosController < ApplicationController
  def index
    @video_items = Video.all
  end








end
