class StudiesController < ApplicationController

	def index
		@studies = Study.all
	end

	def show

	end

	def new

	end

	def update
	end

	private

	def study_params
		params.require(:study).permit(:title, :principal_investigator, :open)
	end

end
