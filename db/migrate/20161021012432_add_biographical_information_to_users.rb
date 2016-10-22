class AddBiographicalInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Biographical_Information, :string
    add_column :users, :Address, :string
    add_column :users, :Phone_Number, :integer
  end
end
