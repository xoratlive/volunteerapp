class AddVolunteerOpportunityIdToClaimOpportunities < ActiveRecord::Migration
  def change
    add_column :claim_opportunities, :volunteer_opportunity_id, :integer
  end
end
