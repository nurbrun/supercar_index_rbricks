class SupercarsController < ApplicationController

	def index	 
		@supercars = Supercar.all.paginate(:page => params[:page], :per_page => 9).order("created_at DESC")
	end
	def new
		@supercar = Supercar.new
		@supercar.make = Make.new
		@supercar.car_model = CarModel.new
		@supercar.city = City.new
		@supercar.country = Country.new
		@supercar.spot_type = SpotType.new
	end

	def show
		@supercar = Supercar.find(params[:id])

		if current_user
			
		end
	end

	def edit
  		@supercar = Supercar.find(params[:id])
	end

	def update
	  @supercar = Supercar.find(params[:id])
	  @supercar.update(supercar_params)
	  @supercar.make.update(make_params)

	  @supercar.car_model.update(car_model_params)

	  @supercar.city.update(city_params)
	  @supercar.country.update(country_params)
	  # @supercar.spot_type.update(spot_type_params)

	    if @supercar.update_attributes(supercar_params)
	      flash[:success] = "Supercar updated"
	      redirect_to @supercar
	    else
	      render 'edit'
	    end
	end


	def create


		@supercar = Supercar.new(supercar_params)
		@supercar.make = Make.new(make_params, :parse => true)
		@supercar.car_model = CarModel.new(car_model_params, :parse => true)
		@supercar.city = City.new(city_params)
		@supercar.country = Country.new(country_params)
		# @supercar.spot_type = SpotType.new(spot_type_params)

		if current_user
			@supercar.user = current_user
		else
		end

	  	if @supercar.save
	  		redirect_to supercars_url
	  	else
	  		render :new
	  	end

	end
	
def destroy
end


	private
	def supercar_params
	 params.require(:supercar).permit(:img_url)
	end
	def make_params
	 # params.require(:make).permit(:name, { tag_list: [] }, :parse => true).permit!
	 params.require(:make).permit(:name, :tag_list)
	end
	def car_model_params
	 # params.require(:car_model).permit(:name, { tag_list: [] }, :parse => true).permit!
	 params.require(:car_model).permit(:name, :tag_list)
	end
	def city_params
	 params.require(:city).permit(:name, :tag_list)
	end
	def country_params
	 params.require(:country).permit(:name, :tag_list)
	end
	def spot_type_params
	 # params.require(:spot_type).permit(:name, :tag_list)
	end

	end
