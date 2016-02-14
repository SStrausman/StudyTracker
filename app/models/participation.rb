class Participation < ActiveRecord::Base
	belongs_to :participant
	belongs_to :site
	belongs_to :study
end
