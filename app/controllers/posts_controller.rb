class PostsController < ApplicationController
  def index
    @posts = Post.all
    @agendas = Agenda.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:url, comments_attributes: [:id, :content, :_destroy],
                                  agenda_attributes: [ :id, :name])
  end
  # def comment_params
  #   params.require(:comment).permit(:content)
  # end
end
