class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :url
      t.text :title   
      t.string :pic
      t.text :abstract
      t.boolean :view   #whether or not you've ever clicked the corresponding link
      t.integer :agenda_id
      t.integer :user_id # ??????????
      
      t.timestamps null: false
    end
  end
end
