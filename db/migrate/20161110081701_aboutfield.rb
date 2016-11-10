class Aboutfield < ActiveRecord::Migration
  def change
  	add_column :users, :about1, :string
  end
end
