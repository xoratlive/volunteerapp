class VolunteerOpportunity < ActiveRecord::Base
	
	validates :Organization, :Address, :Phone, :Website, presence: true
end
