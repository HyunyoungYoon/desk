class MydeskController < ApplicationController
  def index
    @posts = Post.all
  end
  def agenda
    @agendas = Agenda.all
  end

  def follow
    @agendas = current_user.agendas
  end

end
