class Supercar < ActiveRecord::Base
	has_one :make
	has_one :car_model
	has_one :city
	has_one :country
	accepts_nested_attributes_for :make, :car_model, :city, :country

def info
	@make
end

end
