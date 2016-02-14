class SitesController < ApplicationController

	def index
	end

	def show
	end

	def create
	end

	def update
	end

	private

	def site_params
		params.require(:site).permit(:location, :name)
	end

end
