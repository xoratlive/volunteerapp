class ChangeStartTimeAndEndTimeToString < ActiveRecord::Migration
  def change
  	change_column :volunteer_opportunities, :start_time, :string
  	change_column :volunteer_opportunities, :end_time, :string
  end
end
