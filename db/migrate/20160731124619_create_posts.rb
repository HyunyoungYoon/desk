class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :url, default: "", null: false
      t.text :title, default: "", null: false, index: true
      t.string :pic, default: "", null: false
      t.text :abstract, default: "", null: false
      t.boolean :view, default: false, null: false, index: true  #whether or not you've ever clicked the corresponding link
      t.integer :agenda_id, index: true, foreign_key: true
      t.integer :user_id, index: true, foreign_key: true # ??????????
      
      t.timestamps null: false
    end
  end
end
