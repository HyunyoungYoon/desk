class AddUsersRefToDesking < ActiveRecord::Migration
  def change
    add_reference :deskings, :user, index: true, foreign_key: true
  end
end
