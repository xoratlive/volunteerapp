class ChangeIntegerLimitInTable < ActiveRecord::Migration
  def change
  	change_column :users, :phone_number, :integer, limit: 8
  end
end
