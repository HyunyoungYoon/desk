class DeskingController < ApplicationController
	def desking
		@user = current_user
    @agenda= Agenda.find(params[:agenda_id])

		if @agenda.users.include? current_user
			desking = Desking.where(agenda: @agenda, user: @user)
			desking.destroy_all
		else
			@agenda.users << current_user
		end
	end

	def destroy
		@agenda = Agenda.find(params[:id])
		@agenda.destroy

		respond_to do |format|
			format.html { redirect_to(agendas_url) }
			format.xml  { head :ok }
		end
	end
end
