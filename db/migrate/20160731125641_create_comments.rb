class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :writer # 작성자의 user id. 이 comment가 속해있는 user와는 다를 수 있다.
      t.integer :share
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
