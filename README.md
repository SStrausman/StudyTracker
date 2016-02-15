# StudyTracker

###Description
StudyTracker is a simple rails application I wrote for a code challenge. It is used to track participants over many studies and locations. 

###Running The App

1. clone the repo
2. change directory to local repo
3. bundle install to get all gems
4. create the database, migrate, seed database.
5. run rails s to start your server.
6. visit site in browser from your localhost.

###SQL Bonus Questions

1. The following will give you a list of years with the number of participants who were born in that year.
    SELECT COUNT(*), extract (year from date_of_birth) AS year FROM participants GROUP BY year;

2. The following will give you a count of patients by site and gender.
    SELECT s.name, p.gender, COUNT(*) FROM participants p, participations pt, sites s WHERE p.id=pt.participant_id AND pt.site_id = s.id GROUP BY s.name, p.gender

3. I did not figure out how to do the export to CSV part. It's not something I've ever conceived of doing before. From searching stack over flows and the like I have found answers like this one:
    \copy (select * from participants) TO '~/Downloads/export.csv' CSV HEADER
But I couldn't get it to work. I'm not entirely sure what it is that I am doing wrong, but I am at the point where I would probably start asking someone for help.

###Notes
1. The scope of the project did not mention anything about security, so I decided not to implement it. Obviously I would include security if I were building this application in the wild. I would implement the devise gem, which is my go to.
2. I had a little bit of fun with the design of the app, even though its very simple. The buttons in particular were nice to tinker with, and I looked up the Northwestern Branding guide for what color palette to use.
