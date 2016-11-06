class VolunteerOpportunity < ActiveRecord::Base
	
	validates :Organization, :Address, :Phone, :Website, presence: true

	belongs_to :user
	has_many :claim_opportunities
	before_save :set_default_status_if_not_specified
	searchkick
end

