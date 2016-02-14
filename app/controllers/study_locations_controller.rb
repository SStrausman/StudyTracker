class StudyLocationsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@study_location = StudyLocation.new
		@study = Study.find(params[:study_id])
	end

	def create
		@study = Study.find(params[:study_id])
		@study_location = StudyLocation.new(study_location_params)
		if @study_location.save
			redirect_to study_path(@study)
		else
    	render :new
		end
	end

	def update
	end

	private
	def study_location_params
		params.require(:study_location).permit(:study_id, :site_id)
	end

end
