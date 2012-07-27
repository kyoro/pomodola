class PagesController < ApplicationController

def show
  @channel = params[:channel]
  
end

def set
  channel = params[:channel]
  count = params[:count]
  Rails.cache.write(channel,count)
  return render :json => {:error => false}
end


def get
  channel = params[:channel]
  count = Rails.cache.read(channel)
  return render :json => {:error => false,:count => count}
end

end
