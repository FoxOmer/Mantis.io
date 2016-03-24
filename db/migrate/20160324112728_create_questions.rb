class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :summary 
      t.string :content, null: false
      t.string :video_link
      t.integer :category_id, null: false, default: 1
      t.integer :founder_id
      t.integer :mentor_id
      t.integer :vote
      

      t.timestamps null: false
    end
  end
end
