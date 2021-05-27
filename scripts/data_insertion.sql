INSERT INTO hackathon VALUES (
	'1111AAAA',
	'Equinox 2021',
	'Equinox aims to provide 36 uninterrupted hours of ideation and innovation. Hackers will receive a platform with the necessary resources to put forth their ideas and skills. In Equinox, imagination is not limited by specific problem statements, In addition to it hackers are given the intellectual freedom to obliterate the boundaries of their imaginative power and tap into their creativity to come up with unique solutions to the problems, they see fit.',
	TO_DATE('2021-06-25','YYYY-MM-DD'),
	TO_DATE('2021-06-27','YYYY-MM-DD'),
	1,
	4,
	3
);

INSERT INTO hackathon VALUES (
	'2222BBBB',
	'Citython Eindhoven',
	'This online Citython edition will be held in the city of Eindhoven, The Netherlands, and is focused on mobility optimization, traffic safety areas and a healthy city future. The goal of this Citython is that young professionals search for innovative and creative solutions that can be applied in the city of Eindhoven to foster innovation.',
	TO_DATE('2021-07-2','YYYY-MM-DD'),
	TO_DATE('2021-07-3','YYYY-MM-DD'),
	1,
	3,
	2
);

INSERT INTO hackathon VALUES (
	'3333CCCC',
	'AI Fair',
	'AI Community is seeking projects across the world, designed and developed by high and middle school students. These projects should try to solve problems related to community or the environment and use technology or AI to solve the problems. The fair is open to all high and middle school students who will solve a community or environment focused problem using technology. Top projects will be showcased on the website and also recognized with awards, scholarships/prizes, and mentorship',
	TO_DATE('2021-06-5','YYYY-MM-DD'),
	TO_DATE('2021-06-9','YYYY-MM-DD'),
	3,
	5,
	4
);

-- ________________________________________________________________________________________________________

INSERT INTO centre VALUES(
	'11AA',
	'Anna Auditorium',
	'VIT',
	'Vellore',
	'Tamil Nadu',
	632014,
	'1111AAAA'
);

INSERT INTO centre VALUES(
	'22BB',
	'ST. George College',
	'Nehru Enclave',
	'Agra',
	'Uttar Pradesh',
	282001,
	'2222BBBB'
);

INSERT INTO centre VALUES(
	'33CC',
	'Computer Centre',
	'IIIT Delhi',
	'Delhi',
	'Delhi',
	110020,
	'3333CCCC'
);

-- ________________________________________________________________________________________________________

INSERT INTO speaker VALUES(
	'umang.s@vit.ac.in',
	'Umang Singh',
	'VITLUG, VIT',
	'Project Head of VIT Linux User Group, begin a startup in 2nd year',
	'911234567891',
	'1111AAAA'
);

INSERT INTO speaker VALUES(
	'pravesh@ms.co.in',
	'Pravesh Sharma',
	'Microsoft India',
	'Senior Developer at Microsoft, India. Currently working on WSL. Previously worled on Visual Studio',
	'911234567892',
	'2222BBBB'
);

INSERT INTO speaker VALUES(
	'abhi.nav@openAI.us',
	'Abhinav Dubey',
	'Open AI',
	'Top Researcher at OpenAI, the world leading AI Company. Currently Working GPT3',
	'911234567893',
	'3333CCCC'
);

-- ________________________________________________________________________________________________________

INSERT INTO organizer VALUES(
	'ayush.dwi@vit.ac.in',
	'Ayush Dwivedi',
	'A member of Management team and a core part of it',
	'911234567894',
	'1111AAAA',
	'11AA'
);

INSERT INTO organizer VALUES(
	'yash.s@gmail.com',
	'Yash Singh',
	'A member of Student welfare community at Agra College',
	'911234567895',
	'2222BBBB',
	'33CC'
);

INSERT INTO organizer VALUES(
	'hvon@outlook.com',
	'Harvey Glockner',
	'President of DSC Management team at IIIT Delhi',
	'911234567896',
	'3333CCCC',
	'33CC'
);

-- ________________________________________________________________________________________________________

INSERT INTO allocates_speaker VALUES(
	'ayush.dwi@vit.ac.in',
	'umang.s@vit.ac.in'
);

INSERT INTO allocates_speaker VALUES(
	'yash.s@gmail.com',
	'pravesh@ms.co.in'
);

INSERT INTO allocates_speaker VALUES(
	'hvon@outlook.com',
	'abhi.nav@openAI.us'
);

-- ________________________________________________________________________________________________________

INSERT INTO judge VALUES(
	'judge1@gamil.com',
	'Satyam Pachaoury',
	'Senior Developer',
	'Performs various development duties, and with specialization as web development',
	'911234567897',
	'1111AAAA'
);

INSERT INTO judge VALUES(
	'judge2@gamil.com',
	'Pratham Sharma',
	'Project Manager',
	'Manages various project duties at Microsoft, India',
	'911234567898',
	'2222BBBB'
);

INSERT INTO judge VALUES(
	'judge3@gamil.com',
	'Pratham Jha',
	'AI Developer',
	'A very reputed person in AI community',
	'911234567899',
	'3333CCCC'
);

-- ________________________________________________________________________________________________________

INSERT INTO allocates_judge VALUES(
	'ayush.dwi@vit.ac.in',
	'judge1@gamil.com'
);
INSERT INTO allocates_judge VALUES(
	'yash.s@gmail.com',
	'judge2@gamil.com'
);
INSERT INTO allocates_judge VALUES(
	'hvon@outlook.com',
	'judge3@gamil.com'
);

-- ________________________________________________________________________________________________________

INSERT INTO sponsor VALUES(
	'sponsor1@gmail.com',
	'Linode',
	'Linode is an American cloud hosting company that provides virtual private servers',
	'1111AAAA'
);
INSERT INTO sponsor VALUES(
	'sponsor2@gmail.com',
	'Microsoft',
	'Microsoft develops, manufactures, supports, and sells software, electronics, PCs, related services',
	'2222BBBB'
);
INSERT INTO sponsor VALUES(
	'sponsor3@gmail.com',
	'OpenAI',
	'OpenAI is research and deployment company with mission to ensure that AGI benefits all life',
	'3333CCCC'
);

-- ________________________________________________________________________________________________________

INSERT INTO allocates_sponsor VALUES(
	'ayush.dwi@vit.ac.in',
	'sponsor1@gmail.com'
);
INSERT INTO allocates_sponsor VALUES(
	'yash.s@gmail.com',
	'sponsor2@gmail.com'
);
INSERT INTO allocates_sponsor VALUES(
	'hvon@outlook.com',
	'sponsor3@gmail.com'
);

-- ________________________________________________________________________________________________________

INSERT INTO prize VALUES(
	'P0000001',
    '1st Prize',
    '$250 and Mentorship',
    'sponsor1@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000002',
    '2nd Prize',
    '$150 and Mentorship',
    'sponsor1@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000003',
    '3rd Prize',
    '$75 and Goodies',
    'sponsor1@gmail.com'
);

INSERT INTO prize VALUES(
	'P0000004',
    '1st Prize',
    'Microsoft GO Tab',
    'sponsor2@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000005',
    '2nd Prize',
    'Azure 200 credits',
    'sponsor2@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000006',
    '3rd Prize',
    'Azure 100 credits',
    'sponsor2@gmail.com'
);

INSERT INTO prize VALUES(
	'P0000007',
    '1st Prize',
    '$150 and Free Course',
    'sponsor3@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000008',
    '2nd Prize',
    '$75 and Free Course',
    'sponsor3@gmail.com'
);
INSERT INTO prize VALUES(
	'P0000009',
    '3rd Prize',
    '$50 and Goodies',
    'sponsor3@gmail.com'
);

-- ________________________________________________________________________________________________________

INSERT INTO team VALUES(
	'T0000001',
    'Block Bandits',
    3,
    'TraceIt',
	'TraceIt aims to revolutionize Poultry Market using blockchain providing traceability and trust',
	'github.com/team1'
);
INSERT INTO team VALUES(
	'T0000002',
    'Team404',
    1,
    'Food Site',
	'A site where college students can subscribe for food service near college',
	'github.com/team2'
);
INSERT INTO team VALUES(
	'T0000003',
    'AI_Dreamers',
    4,
    'Best Map Route',
	'A ML based software that finds the best route on map with least travel time',
	'github.com/team3'
);

-- ________________________________________________________________________________________________________

INSERT INTO prize_to VALUES(
	'P0000001',
	'T0000001'
);
INSERT INTO prize_to VALUES(
	'P0000005',
	'T0000002'
);
INSERT INTO prize_to VALUES(
	'P0000009',
	'T0000003'
);

-- ________________________________________________________________________________________________________

INSERT INTO takes_part_in VALUES(
	'T0000001',
	'1111AAAA'
);
INSERT INTO takes_part_in VALUES(
	'T0000002',
	'2222BBBB'
);
INSERT INTO takes_part_in VALUES(
	'T0000003',
	'3333CCCC'
);

-- ________________________________________________________________________________________________________

INSERT INTO judges_team VALUES(
	'judge1@gamil.com',
	'T0000001'
);
INSERT INTO judges_team VALUES(
	'judge2@gamil.com',
	'T0000002'
);
INSERT INTO judges_team VALUES(
	'judge3@gamil.com',
	'T0000003'
);

-- ________________________________________________________________________________________________________

INSERT INTO participant VALUES(
	'user1.1@email.com',
    'Ayush Dubey',
    'VIT, Vellore',
    'Frontend Dev',
    911234567990
);
INSERT INTO participant VALUES(
	'user1.2@email.com',
    'Ayush Dubey',
    'VIT, Vellore',
    'Frontend Dev',
    911234567990
);
INSERT INTO participant VALUES(
	'user1.3@email.com',
    'Ayush Dubey',
    'VIT, Vellore',
    'Frontend Dev',
    911234567990
);
INSERT INTO participant VALUES(
	'user2@email.com',
    'Ankit Sharma',
    'Agra College',
    'Blockchain Dev',
    911234567991
);
INSERT INTO participant VALUES(
	'user3.1@email.com',
    'Piyush Jain',
    'IIIT Delhi',
    'Backend Dev',
    911234567992
);
INSERT INTO participant VALUES(
	'user3.2@email.com',
    'Piyush Jain',
    'IIIT Delhi',
    'Backend Dev',
    911234567992
);
INSERT INTO participant VALUES(
	'user3.3@email.com',
    'Piyush Jain',
    'IIIT Delhi',
    'Backend Dev',
    911234567992
);
INSERT INTO participant VALUES(
	'user3.4@email.com',
    'Piyush Jain',
    'IIIT Delhi',
    'Backend Dev',
    911234567992
);

-- ________________________________________________________________________________________________________

INSERT INTO part_of VALUES(
	'user1.1@email.com',
	'T0000001'
);
INSERT INTO part_of VALUES(
	'user1.2@email.com',
	'T0000001'
);
INSERT INTO part_of VALUES(
	'user1.3@email.com',
	'T0000001'
);



INSERT INTO part_of VALUES(
	'user2@email.com',
	'T0000002'
);



INSERT INTO part_of VALUES(
	'user3.1@email.com',
	'T0000003'
);
INSERT INTO part_of VALUES(
	'user3.2@email.com',
	'T0000003'
);
INSERT INTO part_of VALUES(
	'user3.3@email.com',
	'T0000003'
);
INSERT INTO part_of VALUES(
	'user3.4@email.com',
	'T0000003'
);


