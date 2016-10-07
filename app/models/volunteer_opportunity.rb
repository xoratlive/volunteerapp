class VolunteerOpportunity < ActiveRecord::Base
	
	validates :Organization, :Address, :Phone, :Website, presence: true

	belongs_to :user
end
