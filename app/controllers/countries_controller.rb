class CountriesController < ApplicationController
	if params[:tag]
	    @countries = Country.tagged_with(params[:tag])
	  else
	    @countries = Country.all
	  end
	end
end
