class UrlsController < ApplicationController

  def create
    @url = Url.new(long_url: params[:long_url])
    @url.save
    redirect_to '/'
  end

  def switch
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.long_url
  end

end
