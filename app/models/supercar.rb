class Supercar < ActiveRecord::Base

	has_one :make
	has_one :car_model
	has_one :city
	has_one :country
	has_one :spot_type

	has_one :rank

	belongs_to :user
	
	accepts_nested_attributes_for :make, :car_model, :city, :country
	validates_presence_of :img_url, :on => :create	
	validates_format_of :img_url, :with => /instagram\.com\/p\/*/

	# e.g validates_format_of :video_link, :with => /youtu\.be\/([^\?]*)/ || /^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/


end