class ParticipationsController < ApplicationController

	def new
		@participation = Participation.new
		@study = Study.find(params[:study_id])
		@site = Site.find(params[:site_id])
	end

	def create
		@study = Study.find(participation_params[:study_id])
		@site = Site.find(participation_params[:site_id])
		@participation = Participation.new(participation_params)
		if @participation.save
			redirect_to study_path(@study)
		else
    	render :new
		end
	end


	private

	def participation_params
		params.require(:participation).permit(:participant_id, :study_id, :site_id)
	end

end