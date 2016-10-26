class AddEventDateToVolunteerOpportunities < ActiveRecord::Migration
  def change
    add_column :volunteer_opportunities, :event_date, :datetime
  end
end
