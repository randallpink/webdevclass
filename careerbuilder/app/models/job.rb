class Job < ActiveRecord::Base
	belongs_to :user
	has_many :applications
	geocoded_by :city_state
	after_validation :geocode 
	validates_presence_of :city, :state


	def city_state
		"#{city}, #{state}"
	end

	def self.remote_job_list	
		self.where(is_remote: true)
	end
	
	def self.onsite_job_list	
		self.where(is_remote: false)
	end

end
