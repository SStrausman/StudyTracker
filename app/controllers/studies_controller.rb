class StudiesController < ApplicationController

	def index

	end

	def show

	end

	def create

	end

	def update
	end

	private

	def study_params
		params.require(:study).permit(:title, :principal_investigator, :open)
	end

end
