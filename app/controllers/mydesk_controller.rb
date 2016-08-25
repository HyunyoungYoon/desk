class MydeskController < ApplicationController
  def index
  end
  def agenda
    @agendas = Agenda.all
  end

  def follow
    @agendas = current_user.agendas
  end
end
