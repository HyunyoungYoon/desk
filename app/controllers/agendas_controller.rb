class AgendasController < ApplicationController
    def index
        @my_agendas = Agenda.all
        @following_agendas
    end    
    def show
        @agenda = Agenda.find(params[:id])
    end

    def new
        @agenda = Agenda.new
    end
    def create
        @agenda = Agenda.new(agenda_params)
        @agenda.user = current_user
        @agenda.save
        redirect_to agendas_path
    end
    
    def edit
        @agenda = Agenda.find(params[:id])
    end
    def update
        @agenda = Agenda.find(params[:id])
        @agenda.update(agenda_params)
        redirect_to agendas_path
    end
    
    def destroy
        @agenda = Agenda.find(params[:id])
        @agenda.destroy
        redirect_to agendas_path
    end
    
    private
    def agenda_params
       params.require(:agenda).permit(:name, :color) 
    end
end
