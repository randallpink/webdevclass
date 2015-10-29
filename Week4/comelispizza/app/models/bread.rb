class Bread < ActiveRecord::Base
	validates_presence_of 	:name, 
							:description
							

	has_many :pizzas
	validates_uniqueness_of	:name
end
