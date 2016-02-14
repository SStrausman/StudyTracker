class Study < ActiveRecord::Base
	has_many :participations
	has_many :participants, through: :participations
	has_many :sites, through: :participations

	validates :title, :uniqueness => true, :presence => true
	validates :principal_investigator, :presence => true
end
