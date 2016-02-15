class ParticipantsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@participant = Participant.new
		@participation = Participation.new
	end

	def create
		@participant = Participant.new(participant_params)
		@study = Study.find(params[:study_id])
		@site = Site.find(params[:site_id])
		@participation = @participant.participations.new(site_id: @site.id, study_id: @study.id)
		if @participant.save
			if @participation.save
				redirect_to study_path(@study)
			end
		else
    	render :new
		end
	end

	def update
	end

	private

	def participant_params
		params.require(:participant).permit(:name, :gender, :date_of_birth, :address)
	end

end
