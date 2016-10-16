class CreateClaimOpportunities < ActiveRecord::Migration
  def change
    create_table :claim_opportunities do |t|
      t.string :please_explain_why_you_are_interested_in_this_opportunity

      t.timestamps null: false
    end
  end
end
