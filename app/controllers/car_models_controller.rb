class CarModelsController < ApplicationController
	def index
	if params[:tag]
	    @car_models = CarModel.tagged_with(params[:tag])
	  else
	    @car_models = CarModel.all
	  end
	end
end
