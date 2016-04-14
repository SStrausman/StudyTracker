class StudiesController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@studies = Study.order(sort_column + " " + sort_direction)
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

	def sort_column
    Study.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
