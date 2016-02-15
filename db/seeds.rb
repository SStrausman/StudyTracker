# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
	s = Study.new(title: Faker::Company.buzzword, principal_investigator: Faker::Name.name, open: true)
	s.save
end

10.times do
	s = Study.new(title: Faker::Company.buzzword, principal_investigator: Faker::Name.name, open: false)
	s.save
end

20.times do
	s = Site.new(name: Faker::Company.name, location: Faker::Address.street_address)
	s.save
end

100.times do
	p = Participant.new(name: Faker::Name.name, gender: ["Male", "Female"].sample, date_of_birth: Faker::Date.between(50.years.ago, 18.years.ago), address: Faker::Address.street_address, last_four: Faker::Number.number(4))
	p.save
end

studies = Study.all
sites = Site.all

5.times do
	studies.each do |study|
		s = StudyLocation.new(study_id: study.id, site_id: sites.sample.id)
		s.save
	end
end

p = Participant.all
studylocations = StudyLocation.all

5.times do
	studylocations.each do |sl|
		q = Participation.new(participant_id: p.sample.id, site_id: sl.site_id, study_id: sl.study_id)
		q.save
	end
end



