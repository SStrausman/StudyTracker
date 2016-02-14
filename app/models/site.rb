class Site < ActiveRecord::Base
	has_many :participations
	has_many :studies, through: :participations
end
