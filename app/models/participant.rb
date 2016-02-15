class Participant < ActiveRecord::Base
	has_many :participations
	has_many :studies, through: :participations
	has_many :sites, through: :participations

	validates :name, :presence => true
	validates :last_four, :presence => true
	validates :gender, :presence => true
	validates :date_of_birth, :presence => true
	validates :name, :uniqueness => {:scope => [:last_four, :date_of_birth]}
end
