class Video < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :name, use: :slugged
  	
  	belongs_to :user
  	belongs_to :category
  	has_many :comments

  	has_many :video_tags
	has_many :tags, through: :video_tags

  geocoded_by :city_state
  after_validation :geocode 
  validates_presence_of :city, :state


  def city_state
    "#{city}, #{state}"
  end

	
	
end
