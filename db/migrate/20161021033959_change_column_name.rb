class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :Biographical_Information, :biographical_information
  	rename_column :users, :Address, :address
  	rename_column :users, :Phone_Number, :phone_number
  end
end
