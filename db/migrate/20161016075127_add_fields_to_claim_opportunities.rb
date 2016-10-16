class AddFieldsToClaimOpportunities < ActiveRecord::Migration
  def change
    add_column :claim_opportunities, :organization_id, :integer
    add_column :claim_opportunities, :volunteer_id, :integer
  end
end
