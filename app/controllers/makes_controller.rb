class MakesController < ApplicationController
	def index
	if params[:tag]
	    @makes = Make.tagged_with(params[:tag])
	  else
	    @makes = Make.all
	    render :allmakes
	  end
	end

	def tag_cloud
    @tags = Make.tag_counts_on(:tags)
  	end

end
