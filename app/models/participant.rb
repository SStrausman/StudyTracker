class Participant < ActiveRecord::Base
	has_many :participations
	has_many :studies, through: :participations
	has_many :sites, through: :participations
end
