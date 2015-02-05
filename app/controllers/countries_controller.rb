class CountriesController < ApplicationController
def index	
	if params[:tag]
	    @countries = Country.tagged_with(params[:tag])
	  else
	    @countries = Country.all
	    render :allcountries
	  end
	end
end
