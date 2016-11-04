class VolunteerOpportunity < ActiveRecord::Base
	
	validates :Organization, :Address, :Phone, :Website, presence: true

	belongs_to :user
	has_many :claim_opportunities
	before_save :set_default_status_if_not_specified

	def set_default_status_if_not_specified
    self.event_date = '- Ongoing, we will work with your schedule' if self.event_date.blank? && self.end_date.blank? && self.start_time.blank? && self.end_time.blank?
end
end

