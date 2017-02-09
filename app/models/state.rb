class State < ActiveRecord::Base
	has_many :registration_numbers
	

	validates :name, presence: true
end
