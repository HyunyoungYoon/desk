class AddAgendaRefToDesking < ActiveRecord::Migration
  def change
    add_reference :deskings, :agenda, index: true, foreign_key: true
  end
end
