class ChangeDateDataTypeToString < ActiveRecord::Migration
  def change
  	change_column :volunteer_opportunities, :event_date, :string
  end
end
