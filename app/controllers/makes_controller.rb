class MakesController < ApplicationController
	def index
	if params[:tag]
	    @makes = Make.tagged_with(params[:tag])
	  else
	    @makes = Make.all
	    render :allmakes
	  end
	end

end
