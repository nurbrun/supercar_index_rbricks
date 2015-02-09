class CountriesController < ApplicationController
def index	
	if params[:tag]
	    @countries = Country.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @countries = Country.all.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allcountries
	  end
	end
end
