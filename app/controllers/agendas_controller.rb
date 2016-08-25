class AgendasController < ApplicationController
  def index
    @agendas = Agenda.all
    @following_agendas

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @agendass }
    end
  end
  def new
    @agenda = Agenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @agenda }
    end
  end
  def create
    @agenda = Agenda.new(agenda_params)

    respond_to do |format|
      if @agenda.save
        flash[:notice] = 'Agenda was successfully created.'
        format.html { redirect_to(@agenda) }
        format.xml  { render xml: @agenda, status: :created, location: @agenda }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @agenda }
    end
  end
  def edit
    @agenda = Agenda.find(params[:id])
  end
  def update
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      if @agenda.update(agenda_params)
        flash[:notice] = 'Agenda was successfully updated.'
        format.html { redirect_to(@agenda) }
        format.xml  { head :ok }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml: @agenda.errors, status: :unprocessable_entity }
      end
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

  private

  def agenda_params
    params.require(:agenda).permit(:name, :color)
  end
end
