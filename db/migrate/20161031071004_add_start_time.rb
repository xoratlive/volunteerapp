class AddStartTime < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :start_time, :time
  end
end
