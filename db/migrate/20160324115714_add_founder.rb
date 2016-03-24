class AddFounder < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :name
      t.string :profile_pic
      t.string :about_me
      t.string :mission_state
      t.string :company_description
      t.string :company_status
    end
  end
end
