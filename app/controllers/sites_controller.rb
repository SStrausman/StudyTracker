class SitesController < ApplicationController

	def show
		@site = Site.find(params[:id])
	end

	def new
		@site = Site.new
	end

	def create
		@site = Site.new(site_params)
		if @site.save
			redirect_to site_path(@site)
		else
    	render :new
		end
	end

	def update
	end

	private

	def site_params
		params.require(:site).permit(:location, :name)
	end

end
