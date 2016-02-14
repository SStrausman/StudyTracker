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

	end

	def update
	end

end
