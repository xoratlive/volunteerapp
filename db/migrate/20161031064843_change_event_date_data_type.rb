class ChangeEventDateDataType < ActiveRecord::Migration
  def change
  	change_column :volunteer_opportunities, :event_date, :date
  end
end
