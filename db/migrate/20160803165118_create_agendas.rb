class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name, default: "", null: false, index: true
      t.string :color, default: "", null: false, index: true #to distinguish agendas easily
      t.integer :user_id, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
