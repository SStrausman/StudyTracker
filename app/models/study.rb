class Study < ActiveRecord::Base
	has_many :participations
	has_many :participants, through: :participations
	has_many :study_locations
	has_many :sites, through: :study_locations

	validates :title, :uniqueness => true, :presence => true
	validates :principal_investigator, :presence => true
end
