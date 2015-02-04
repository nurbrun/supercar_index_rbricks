class MakesController < ApplicationController
	def index
	if params[:tag]
	    @makes = Make.tagged_with(params[:tag])
	  else
	    @makes = Make.all
	  end
	end

end
