class CarModelsController < ApplicationController
	def index
	if params[:tag]
	    @car_models = CarModel.tagged_with(params[:tag]).tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @car_models = CarModel.all.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allmodels
	  end
	end
end
