class Post < ActiveRecord::Base
	has_many :comments
	extend FriendlyId
  	friendly_id :post, use: :slugged
end
