class StaticPagesController < ApplicationController
  def index
    if params[:user].nil?
      @photos = user_photos()
    else
      @photos = user_photos(params[:user][:id])
    end
    
  end
  private
  
  def user_photos(user_id = '39742154@N03', photo_count = 12)
    flickr.photos.search(:user_id => user_id, :per_page => photo_count)
  end
  
  
  end

