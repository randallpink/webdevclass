class Category < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :name, use: :slugged

	has_many :videos
	validates_presence_of :name
	validates_uniqueness_of :name
end
