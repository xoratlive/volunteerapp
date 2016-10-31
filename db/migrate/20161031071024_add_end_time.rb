class AddEndTime < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :end_time, :time
  end
end
