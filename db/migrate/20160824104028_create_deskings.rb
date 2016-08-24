class CreateDeskings < ActiveRecord::Migration
  def change
    create_table :deskings do |t|

      t.timestamps null: false
    end
  end
end
