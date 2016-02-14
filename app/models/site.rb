class Site < ActiveRecord::Base
	has_many :participations
	has_many :study_locations
	has_many :studies, through: :study_locations

	validates :name, :uniqueness => true, :presence => true
	validates :location, :presence => true
end
