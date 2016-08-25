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
    url_new.pic = clip[:images][0]
    
    url_new.save
    

    @allurl = Url.all.order("created_at DESC").limit(1)
  end
end
