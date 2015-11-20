class Vehicle < ActiveRecord::Base
	
	belongs_to :category
	has_many :vehicle_features
	has_many :features, through: :vehicle_features

	extend FriendlyId
	friendly_id :sluggable, use: [:slugged, :finders]

	def sluggable
	 category.make.name + " " + category.name + " " + Time.now.to_i.to_s
	end
end
