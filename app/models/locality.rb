class Locality < ActiveRecord::Base
	belongs_to :registration_number
	

	validates :name, :registration_id, presence: true
end
