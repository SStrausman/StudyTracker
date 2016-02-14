class StudyLocation < ActiveRecord::Base
	belongs_to :study
	belongs_to :site

	validates :study_id, :uniqueness => true
	validates :site_id, :uniqueness => true
end
