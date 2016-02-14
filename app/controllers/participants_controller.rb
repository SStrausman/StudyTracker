class ParticipantsController < ApplicationController

	def index
	end

	def show
	end

	def new
	end

	def create

	end

	def update
	end

	private

	def participant_params
		params.require(:participant).permit(:name, :gender, :date_of_birth, :address)
	end

end
