class HomeController < ApplicationController
  def index
  end

  def urlinput
    url_new = Url.new
    url_new.url = params[:url]
    url_new.save

    @allurl = Url.all
  end
end
