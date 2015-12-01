class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 ##  extend FriendlyId
 ##  friendly_id :sluggable, use: [:slugged, :finders]
   has_many :jobs
   has_many :applications

   def job_count
   		jobs.count 
   end
  
   def last_job_posted_at
   		last_job_posted = jobs.order(created_at: :desc).first
   		last_job_posted.created_at	
   end
end
