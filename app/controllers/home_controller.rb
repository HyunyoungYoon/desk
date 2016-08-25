require 'scrapifier'

class HomeController < ApplicationController
  def index
  end

  def urlinput
    url_new = Url.new
    url_new.url = params[:link]
    clip = params[:link].scrapify(images: [:png, :jpg])
    url_new.title = clip[:title]
    url_new.abstract = clip[:description].gsub(/&nbsp;/,"")
    url_new.pic = clip[:pic]
    
    url_new.save
    

    @allurl = Url.all
  end
end
