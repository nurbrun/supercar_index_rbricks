class Supercar < ActiveRecord::Base
	has_one :make
	has_one :car_model
	has_one :city
	has_one :country
end
