class RegistrationNumber < ActiveRecord::Base
	has_many :localities, foreign_key: "registration_id"
	belongs_to :state
	validates :name, :state_id, :office, presence: true
end
