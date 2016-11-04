class AddEndDateColumn < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :end_date, :string
  end
end
