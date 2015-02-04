class SupercarsController < ApplicationController

	def index
	 
		@supercars = Supercar.all

	end

	def new
		@supercar = Supercar.new
		@supercar.make = Make.new
		@supercar.car_model = CarModel.new
		@supercar.city = City.new
		@supercar.country = Country.new
	end

	def show
		@supercar = Supercar.find(params[:id])

		if current_user
			
		end
	end

	def create

		@supercar = Supercar.new(supercar_params)
		@supercar.make = Make.new(make_params)
		@supercar.car_model = CarModel.new(car_model_params)
		@supercar.city = City.new(city_params)
		@supercar.country = Country.new(country_params)
		
		# @supercar.user = current_user
	  	if @supercar.save
	  		redirect_to supercars_url
	  	else
	  		render :new
	  	end

	end

	private
	def supercar_params
	 params.require(:supercar).permit(:img_url)
	end
	def make_params
	 params.require(:make).permit(:name, :tag_list)
	end
	def car_model_params
	 params.require(:car_model).permit(:name, :tag_list)
	end
	def city_params
	 params.require(:city).permit(:name, :tag_list)
	end
	def country_params
	 params.require(:country).permit(:name, :tag_list)
	end

	end
