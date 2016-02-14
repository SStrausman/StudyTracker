class Participation < ActiveRecord::Base
	belongs_to :participant
	belongs_to :site
	belongs_to :study

	validates :participant_id, uniqueness: { scope: :study_id }
end
