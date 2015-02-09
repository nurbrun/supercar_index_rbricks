class MakesController < ApplicationController
	def index
	if params[:tag]
	    @makes = Make.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @makes = Make.all.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allmakes
	  end
	end

	def tag_cloud
    @tags = Make.tag_counts_on(:tags)
  	end

end
