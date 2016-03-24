class AddFieldsToFounder < ActiveRecord::Migration
  def change
    add_column :founders, :accelerator, :string
    add_column :founders, :investors, :string
  end
end
