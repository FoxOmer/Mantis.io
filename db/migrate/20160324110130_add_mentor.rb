class AddMentor < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :profile_pic
      t.string :about
      t.string :topic
    end
  end
end
