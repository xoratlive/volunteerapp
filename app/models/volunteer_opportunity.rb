class VolunteerOpportunity < ActiveRecord::Base
	
	validates :Organization, :Address, :Phone, :Website, presence: true

	belongs_to :user
	has_many :claim_opportunities, dependent: :destroy
	searchkick
end

