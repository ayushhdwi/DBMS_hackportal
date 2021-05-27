# Hackportal

## Introduction

Our DBMS project is a database for a portal for hackathons
that makes it easy for organisations to conduct hackathons
and individuals to take part in hackathons. In this system,
organizations will be able to host hackathons and manage it to
some extent and users can register and search for other users
and form teams for hackathons. A single user can be a part of
multiple teams and can take part in multiple hackathons.
Organizations will also be able to find and invite appropriate
sponsors, judges, speakers and center for a hackathon. This
portal can be used by various engineering, science, tech and
commerce sectors to take part in and to conduct hackathons.
The system is developed using Oracle as our database
management system.
___

## Data Requirements
1. **Hackathon**
This entity includes details about the hackathon. It contains
attributes like hackathon id, hackathon name, hackathon
description(rules, eligibility criteria and prizes), important start
and end dates, eligible team size (minimum and maximum
number of members), number of rounds in hackathon, centre id
for centers where hackathon will be held, organisation
representative’s email who is conducting the hackathon,
sponsors(email) of the hackathon and invited judges and
speakers’ emails.
⏵Each hackathon has a unique hack id.
⏵We have not taken names as unique so that the same
organisation can hold the event next time with the same name.
2. **Participant**
This entity includes details about the users who are registered in
our HackPortal and will be participating in hackathons. It
contains their name, email, mobile number, their domain or field
of work, where they are from(college, school or company) and
the team id of the team in which they are.
⏵Each user is identified by their email which is unique.
3. **Team**
This entity includes details about the team comprised of users.
This contains team id, team name, project details (name,
description and its github link), number of members in team and
the hackathon id in which the team is participating in.
⏵Team ID will be used to distinguish one team from others.
4. **Sponsor**
This entity includes details about sponsors of the hackathons
and the prizes they will be giving to the top performers. It
includes sponsor name, email and details of prizes they will be
distributing (prize type and prize name), to whom they later
distributed the prize to (team id) and in which hackathon it was
distributed (hack id).
⏵Each sponsor individual or organisation will be distinguished
through their email.
5. **Judge**
This entity includes the details of the judges who will be grading
the teams and their projects. This contains the judge's name,
their email, their mobile number, their profession, some
description about them (like their work) and the team id of the
teams they will be judging plus the hackathon id.
⏵Each judge is uniquely identified by their email id.
6. **Organiser**
This entity includes the hackathon organiser details like their
name, their email and their mobile number and other
information.
⏵Each organizer is uniquely identified by their email id.
7. **Speaker**
This entity includes the invited speakers details which contain
their name, their email, mobile number and the organisation
they belong to and some description about them and their work.
⏵Each speaker is uniquely identified by their email id.
8. **Center**
This entity includes the centre ID , centre name and the address
to centre.
⏵Each center is uniquely identified by their center id.
9. **Prize**
This entity includes the prize ID , prize name and the description
about each prize.
⏵Each prize is uniquely identified by their prize id.

### Relations
1. Each hackathon is conducted at a center.
2. Each hackathon is conducted by an organizer.
3. Each hackathon has a number of sponsors.
4. Each hackathon has a number of judges.
5. Each hackathon has a number of speakers.
6. Participants can be a part of multiple teams.
7. Teams can take part in any number of hackathons.
8. Each prize is given to several teams.
9. Every judge judges at least one team.
10. Organizers allocate speakers for a hackathon.
11. Organizers allocate judges for a hackathon.
12. Organizers allocate sponsors for a hackathon.
13. Organizer finds a center for a hackathon.

## Functional Requirements
1. **Data Creation**
- Create Participant Profile : Participants can create their profile with information like name,email,phone number, domain, college name and their selected team.
- Create Organizer Profile: Organizers can create their organization profile with details like name,email,info and mobile number.
- Add Hackathon Details: Organizers can create hackathon with details like hackathon id,name,description,start and end date, min and max team size, number of rounds to be conducted in hackathon.
- Create Team : Participants can form a team with details like team id,team name, project they are making for a particular hackathon and hackathon ids of the hackathons they are participating in.
- Allocate judges for the hackathon : Organizers can add a judge's information for the hackathon.
- Allocate speakers for the hackathon : Organizers can add speaker’s information for the hackathon.
- Allocate sponsors for the hackathon : Organizers can add sponsor’s information for the hackathon.
- Allocate centre for the hackathon : Organizers can add centre’s information for the hackathon.
- Add prize information for the hackathon : Organizers can add information of various prizes from a sponsor for the hackathon.
- Add prize winners for the hackathon : Organizers can add information of various prizes from a sponsor for the hackathon.

2. **Data Modification**
- Update Participant Profile : Participants can update their profile information like name,email,phone number, domain, college name and their selected team.
- Update Organizer Profile: Organizers can update their organization profile details like name,email,info and mobile number.
- Update Hackathon Details: Organizers can update hackathon details like hackathon id,name,description,start and end date, min and max team size, number of rounds to be conducted in hackathon.
- Update Team : Participants can update team details like team id,team name, project they are making for a particular hackathon and hackathon ids of the hackathons they are participating in.
- Update judges for the hackathon : Organizers can update the judge's information for the hackathon.
- Update speakers for the hackathon : Organizers can update the speaker’s information for the hackathon.
- Update sponsors for the hackathon : Organizers can update the sponsor’s information for the hackathon.
- Update centre for the hackathon : Organizers can update the centre’s information for the hackathon.
- Update prize information for the hackathon : Organizers can update information of various prizes from a sponsor for the hackathon.
- Update prize winners for the hackathon : Organizers can update information of various prizes from a sponsor for the hackathon.

3. **Data Retrieval:**
- View User Profile: Participants can view their profile information.
- View Organizer Profile: Organizers can view their profile information.
- View Hackathons: Participants and teams can search a list of hackathons and view information about each hackathon which is conducted by a particular organization.
- View Team Details: All the team members can view team details like the hackathons in which they are participating and the projects they have made for each hack.
- View winners of a hackathon: Everyone can see the winners of a particular hack.

4. **Data Deletion**
- Delete Participant Profile : Participants can delete their profile.
- Delete Organizer Profile: Organizers can delete their organization’s profile.
- Delete Hackathon: Organizers can delete a hackathon.
- Delete Team : Participants can delete their team.
- Delete judges for the hackathon : Organizers can delete the judge's information for the hackathon.
- Delete speakers for the hackathon : Organizers can delete the speaker’s information for the hackathon.
- Delete sponsors for the hackathon : Organizers can delete the sponsor’s information for the hackathon.
- Delete centre for the hackathon : Organizers can delete the centre’s information for the hackathon.
- Delete prize information for the hackathon : Organizers can delete information of various prizes from a sponsor for the hackathon.
- Delete prize winners for the hackathon : Organizers can delete information of various prizes from a sponsor for the hackathon.
___
## About
This was submitted under course **Database Management System (ITE1003)**.
Faculty: **Bimal Kumar Ray**
Team: **Yash Singhal(19BIT0136), Ayush Dwivedi(19BIT0236)** 