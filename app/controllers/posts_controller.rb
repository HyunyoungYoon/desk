class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @agenda = Agenda.new
  end
  def create
    # if make a new agenda
    agendaexisting = params[:agendaexisting]
    if agendaexisting == 0
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

  private
  # params to make a new agenda
  def post_new_params
    params.require(:post).permit(:url, comments_attributes: [:id, :content, :_destroy],
                                  agenda_attributes: [ :id, :name, :color])
  end
  # params to select one of existing agendas
  def post_existing_params
    params.require(:post).permit(:url, :agenda_id, comments_attributes: [:id, :content, :_destroy])
  end

end
