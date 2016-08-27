class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, default: "", null: false
      t.integer :writer, index: true, foreign_key: true # 작성자의 user id. 이 comment가 속해있는 user와는 다를 수 있다.
      t.integer :share, default: 0, null: false, index: true
      t.integer :post_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
