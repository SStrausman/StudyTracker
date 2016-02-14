class Site < ActiveRecord::Base
	has_many :participations
	has_many :studies, through: :participations

	validates :name, :uniqueness => true, :presence => true
	validates :location, :presence => true
end
