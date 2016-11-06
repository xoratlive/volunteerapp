class AddDaysAndTimeSlots < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :monday_morning, :text
  	add_column :volunteer_opportunities, :monday_afternoon, :text
  	add_column :volunteer_opportunities, :monday_evening, :text
  	add_column :volunteer_opportunities, :tuesday_morning, :text
  	add_column :volunteer_opportunities, :tuesday_afternoon, :text
  	add_column :volunteer_opportunities, :tuesday_evening, :text
  	add_column :volunteer_opportunities, :wednesday_morning, :text
  	add_column :volunteer_opportunities, :wednesday_afternoon, :text
  	add_column :volunteer_opportunities, :wednesday_evening, :text
  	add_column :volunteer_opportunities, :thursday_morning, :text
  	add_column :volunteer_opportunities, :thursday_afternoon, :text
  	add_column :volunteer_opportunities, :thursday_evening, :text
  	add_column :volunteer_opportunities, :friday_morning, :text
  	add_column :volunteer_opportunities, :friday_afternoon, :text
  	add_column :volunteer_opportunities, :friday_evening, :text
  	add_column :volunteer_opportunities, :saturday_morning, :text
  	add_column :volunteer_opportunities, :saturday_afternoon, :text
  	add_column :volunteer_opportunities, :saturday_evening, :text
  	add_column :volunteer_opportunities, :sunday_morning, :text
  	add_column :volunteer_opportunities, :sunday_afternoon, :text
  	add_column :volunteer_opportunities, :sunday_evening, :text
  end
end
