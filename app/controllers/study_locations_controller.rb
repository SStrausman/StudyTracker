class StudyLocationsController < ApplicationController

	def show
		@study = Study.find(params[:study_id])
		@study_location = StudyLocation.find(params[:id])
		@site = @study_location.site
		@participations = Participation.where("site_id = ? AND study_id = ?", @site.id, @study.id)
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

	private
	def study_location_params
		params.require(:study_location).permit(:study_id, :site_id)
	end

end
