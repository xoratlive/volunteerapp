class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

  has_many :volunteer_opportunities, dependent: :destroy
  has_many :opportunities_to_claim, class_name: "Claim_opportunity", foreign_key: "organization_id"
  has_many :opportunities_that_have_been_claimed, class_name: "Claim_opportunity", foreign_key: "volunteer_id"

end
