class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :biographical_information, :address, :phone_number, presence: true

  has_many :volunteer_opportunities, dependent: :destroy
  has_many :opportunities_to_claim, class_name: "Claim_opportunity", foreign_key: "organization_id"
  has_many :opportunities_that_have_been_claimed, class_name: "Claim_opportunity", foreign_key: "volunteer_id"

  has_attached_file :image, styles: { medium: "300x>", thumb: "100x100>" }, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
