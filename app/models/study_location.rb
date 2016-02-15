class StudyLocation < ActiveRecord::Base
	belongs_to :study
	belongs_to :site

	validates :study_id, :uniqueness => { scope: :site_id }
	validates :site_id, :uniqueness => { scope: :study_id }
end
