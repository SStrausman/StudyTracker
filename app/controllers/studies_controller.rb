class StudiesController < ApplicationController

	def index
		@studies = Study.all
	end

	def show
		@study = Study.find(params[:id])
		@locations = @study.study_locations
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
	end

	private

	def study_params
		params.require(:study).permit(:title, :principal_investigator, :open)
	end

end
