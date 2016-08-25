class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.text :title   
      t.string :pic
      t.text :abstract
      t.timestamps null: false
    end
  end
end
