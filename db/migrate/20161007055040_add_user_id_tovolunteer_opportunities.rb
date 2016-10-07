class AddUserIdTovolunteerOpportunities < ActiveRecord::Migration
  def change
  	 add_column :volunteer_opportunities, :user_id, :integer
  end
end
