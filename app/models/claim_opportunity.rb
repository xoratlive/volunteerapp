class ClaimOpportunity < ActiveRecord::Base
	validates :please_explain_why_you_are_interested_in_this_opportunity, presence: true

	belongs_to :volunteer_opportunity
	belongs_to :volunteer, class_name: "User"
    belongs_to :organization, class_name: "User"
end
