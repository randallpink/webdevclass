class Pizza < ActiveRecord::Base
	validates_presence_of 	:name, 
							:description, 
							:price

	validates_uniqueness_of	:name

	belongs_to :bread
	belongs_to :sauce
end
