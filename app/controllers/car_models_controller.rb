class CarModelsController < ApplicationController
	def index
	if params[:tag]
	    @car_models = CarModel.tagged_with(params[:tag]).tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @car_models = CarModel.all.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allmodels
	  end
	end

	def tag_cloud
    	@tags = Make.tag_counts_on(:tags)
	end

  	def tag
	    @makes = Make.tagged_with(params[:id])
	    @makes = Make.tag_counts_on(:tags)
	    render :action => 'index'
  	end
end
