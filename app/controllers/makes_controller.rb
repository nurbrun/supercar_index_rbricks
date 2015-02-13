class MakesController < ApplicationController
	before_action :tag_cloud

	def index
	if params[:tag]
	    @makes = Make.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	  else
	    @makes = Make.all.paginate(:page => params[:page], :per_page => 6).order("created_at DESC")
	    render :allmakes
	  end
	end

  def tag_cloud
    @tags = CarModel.tag_counts_on(:tags)
  end

  def tag
    @makes = Make.tagged_with(params[:name])
    @makes = Make.tag_counts_on(:tags)
    render :action => 'index'

  end
end


