class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.string :color #to distinguish agendas easily
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
