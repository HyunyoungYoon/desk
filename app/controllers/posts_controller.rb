require 'scrapifier'

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @my_comment = @post.comments.where(writer: current_user.id).first
    @shared_comments = @post.comments.where(share: current_user.id)
    @unshared_comments = @post.comments.where.not(writer: current_user.id, share: current_user.id)
  end
  def urlinput
    url_new = Url.new
    url_new.url = params[:link]
    clip = params[:link].scrapify(images: [:png, :jpg])
    url_new.title = clip[:title]
    url_new.abstract = clip[:description].gsub(/&nbsp;/,"")
    url_new.pic = clip[:images][0]
    url_new.save

    urlinput = url_new.url
    urltitle = url_new.title
    urlabstract = url_new.abstract
    urlpic = url_new.pic
    render json: {keyi: urlinput, keyt: urltitle, keya: urlabstract, keyp: urlpic}

    @allurl = Url.all.order("created_at DESC").limit(1)
  end


  def new
    @post = Post.new
    @posts = Post.all
  end
  def create
    agendaexisting = params[:agendaexisting]
    # if make a new agenda
    agendaexisting = params[:agendaexisting]
    if agendaexisting == '0'
      @post = Post.new(post_new_params)
      @post.save
      # else choose one of existing agendas
    else
      @post = Post.new(post_existing_params)
      @post.save
    end
    redirect_to agenda_posts_path(agenda_id: @post.agenda_id)
  end

  def agendacheck
    @agendanumber=params[:agenda_number]
    agendaname = "이 포스트는 어젠다 #{Agenda.find(@agendanumber).name}에 포함될 것입니다."
    agendanumber = @agendanumber
    render json: {keys: agendaname, keyn: agendanumber}
  end


  # post를 수정하는 경우는 없다
  # 수정한다면 comment를 수정하겠지
  # 만약 다른 agenda랑 연결하고자 한다면?

  def destroy
    @post = Post.find(params[:id])
    back = @post.agenda_id
    @post.destroy
    redirect_to agenda_posts_path(back)
  end

  def share
    Comment.create(post_id: params[:post_id], writer: params[:writer], content: params[:content], share: params[:share])

    redirect_to :back
  end

  private
  # params to make a new agenda
  def post_new_params
    params.require(:post).permit(:url, :title, :pic, :abstract, comments_attributes: [:id, :content, :_destroy],
                                                          agenda_attributes: [:id, :name, :color])
  end
  # params to select one of existing agendas
  def post_existing_params
    params.require(:post).permit(:url, :title, :pic, :abstract, :agenda_id, comments_attributes: [:id, :content, :_destroy])
  end

end
