class Job < ActiveRecord::Base
	belongs_to :user
	has_many :applications
	geocoded_by :city_state
	after_validation :geocode 
	validates_presence_of :city, :state


	def city_state
		"#{city}, #{state}"
	end
end
