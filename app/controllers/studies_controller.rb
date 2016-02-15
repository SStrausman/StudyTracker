class StudiesController < ApplicationController

	def index
		@studies = Study.all
	end

	def show
		@study = Study.find(params[:id])
		@locations = @study.study_locations
		@participations = Participation.where("study_id = ?", @study.id).order("site_id")
	end

	def new
		@study = Study.new
	end

	def create 
		@study = Study.new(study_params)
		if @study.save
			redirect_to study_path(@study)
		else
    	render :new
		end
	end

	def update
		@study = Study.find(params[:id])
		@study.update_attributes(study_params)
		redirect_to study_path(@study)
	end

	private

	def study_params
		params.require(:study).permit(:title, :principal_investigator, :open)
	end

end
