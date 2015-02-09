class CitiesController < ApplicationController
	def index
	if params[:tag]
	    @cities = City.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @cities = City.all.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allcities
	  end
	end
end
