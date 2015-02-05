class CitiesController < ApplicationController
	def index
	if params[:tag]
	    @cities = City.tagged_with(params[:tag])
	  else
	    @cities = City.all
	  end
	end
end
