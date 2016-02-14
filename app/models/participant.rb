class Participant < ActiveRecord::Base
	has_many :participations
	has_many :studies, through: :participations
	has_many :sites, through: :participations

	validates :name, :uniqueness => true, :presence => true
	validates :gender, :presence => true
	validates :date_of_birth, :presence => true
end
