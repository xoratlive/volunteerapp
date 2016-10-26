class AddDescriptionToVolunteerOpportunities < ActiveRecord::Migration
  def change
    add_column :volunteer_opportunities, :description, :text
  end
end
