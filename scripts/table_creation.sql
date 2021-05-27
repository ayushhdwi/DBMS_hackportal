CREATE TABLE hackathon(
    hack_id VARCHAR(8),
    name VARCHAR(20),
    description VARCHAR(500),
    start_date DATE,
    end_date DATE,
    min_team_size NUMBER(1),
    max_team_size NUMBER(1),
    no_of_rounds NUMBER(1),
    CONSTRAINT PK_hackathon PRIMARY KEY(hack_id)
);

CREATE TABLE CENTRE(
    centre_id VARCHAR(4),
    name VARCHAR(20),
    street VARCHAR(20),
    city VARCHAR(20),
    state VARCHAR(20),
    pincode NUMBER(7),
    hack_id VARCHAR(8),
    CONSTRAINT PK_centre_id PRIMARY KEY(centre_id),
    CONSTRAINT hack_FK FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE CASCADE
);

CREATE TABLE speaker(
    speaker_email VARCHAR(20),
    name VARCHAR(20),
    organization VARCHAR(20),
    description VARCHAR(100),
    phone_num NUMBER(12),
    hack_id VARCHAR(8),
    CONSTRAINT PK_speaker PRIMARY KEY(speaker_email),
    CONSTRAINT hack_FK2 FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE CASCADE,
    CONSTRAINT chk_phone CHECK (LENGTH(phone_num)=12)
);

CREATE TABLE organizer(
    organizer_email VARCHAR(20),
    name VARCHAR(20),
    info VARCHAR(100),
    phone_num NUMBER(12),
    hack_id VARCHAR(8),
    centre_id VARCHAR(4),
    CONSTRAINT PK_organizer PRIMARY KEY(organizer_email),
    CONSTRAINT hack_FK3 FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE SET NULL,
    CONSTRAINT centre_FK FOREIGN KEY(centre_id) REFERENCES centre(centre_id) ON DELETE SET NULL,
    CONSTRAINT chk_phone2 CHECK (LENGTH(phone_num)=12)
);

CREATE TABLE allocates_speaker(
    organizer_email VARCHAR(20),
    speaker_email VARCHAR(20),
    CONSTRAINT PK_allocates_speaker PRIMARY KEY(organizer_email,speaker_email),
    CONSTRAINT org_FK FOREIGN KEY(organizer_email) REFERENCES organizer(organizer_email) ON DELETE CASCADE,
    CONSTRAINT speaker_FK FOREIGN KEY(speaker_email) REFERENCES speaker(speaker_email) ON DELETE CASCADE
);

CREATE TABLE judge(
    judge_email VARCHAR(20),
    name VARCHAR(20),
    profession VARCHAR(20),
    about VARCHAR(100),
    phone_num NUMBER(12),
    hack_id VARCHAR(8),
    CONSTRAINT PK_judge PRIMARY KEY(judge_email),
    CONSTRAINT hack_FK4 FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE CASCADE
);

CREATE TABLE allocates_judge(
    organizer_email VARCHAR(20),
    judge_email VARCHAR(20),
    CONSTRAINT PK_allocates_judge PRIMARY KEY(organizer_email,judge_email),
    CONSTRAINT org_FK2 FOREIGN KEY(organizer_email) REFERENCES organizer(organizer_email) ON DELETE CASCADE,
    CONSTRAINT judge_FK FOREIGN KEY(judge_email) REFERENCES judge(judge_email) ON DELETE CASCADE
);

CREATE TABLE sponsor(
    sponsor_email VARCHAR(20),
    name VARCHAR(20),
    description VARCHAR(100),
    hack_id VARCHAR(8),
    CONSTRAINT PK_sponsor PRIMARY KEY(sponsor_email),
    CONSTRAINT hack_FK5 FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE CASCADE
);

CREATE TABLE allocates_sponsor(
    organizer_email VARCHAR(20),
    sponsor_email VARCHAR(20),
    CONSTRAINT PK_allocates_sponsor PRIMARY KEY(organizer_email,sponsor_email),
    CONSTRAINT org_FK3 FOREIGN KEY(organizer_email) REFERENCES organizer(organizer_email) ON DELETE CASCADE,
    CONSTRAINT sponsor_FK2 FOREIGN KEY(sponsor_email) REFERENCES sponsor(sponsor_email) ON DELETE CASCADE
);

CREATE TABLE prize(
    prize_id VARCHAR(8),
    prize_name VARCHAR(20),
    prize_description VARCHAR(300),
    sponsor_email VARCHAR(20),
    CONSTRAINT PK_prize PRIMARY KEY(prize_id),
    CONSTRAINT sponsor_FK FOREIGN KEY(sponsor_email) REFERENCES sponsor(sponsor_email) ON DELETE CASCADE
);

CREATE TABLE team(
    team_id VARCHAR(8),
    name VARCHAR(20),
    num_of_members NUMBER(1),
    project_name VARCHAR(20),
    project_description VARCHAR(100),
    project_github_link VARCHAR(20),
    CONSTRAINT PK_team PRIMARY KEY(team_id)
);

CREATE TABLE prize_to(
    prize_id VARCHAR(8),
    team_id VARCHAR(8),
    CONSTRAINT PK_prize_to PRIMARY KEY(prize_id,team_id),
    CONSTRAINT prize_FK FOREIGN KEY(prize_id) REFERENCES prize(prize_id) ON DELETE CASCADE,
    CONSTRAINT team_FK2 FOREIGN KEY(team_id) REFERENCES team(team_id) ON DELETE CASCADE
);

CREATE TABLE takes_part_in(
    team_id VARCHAR(8),
    hack_id VARCHAR(8),
    CONSTRAINT PK_takes_part_in PRIMARY KEY(team_id,hack_id),
    CONSTRAINT team_FK FOREIGN KEY(team_id) REFERENCES team(team_id) ON DELETE CASCADE,
    CONSTRAINT hack_FK6 FOREIGN KEY(hack_id) REFERENCES hackathon(hack_id) ON DELETE CASCADE
);


CREATE TABLE judges_team(
    judge_email VARCHAR(20),
    team_id VARCHAR(8),
    CONSTRAINT PK_judges_team PRIMARY KEY(judge_email,team_id),
    CONSTRAINT judge_FK2 FOREIGN KEY(judge_email) REFERENCES judge(judge_email) ON DELETE CASCADE,
    CONSTRAINT team_FK3 FOREIGN KEY(team_id) REFERENCES team(team_id) ON DELETE CASCADE
);

CREATE TABLE participant(
    user_email VARCHAR(20),
    name VARCHAR(20),
    college_name VARCHAR(20),
    domain VARCHAR(20),
    phone_num NUMBER(12),
    CONSTRAINT PK_user PRIMARY KEY(user_email)
);

CREATE TABLE part_of(
    user_email VARCHAR(20),
    team_id VARCHAR(8),
    CONSTRAINT PK_part_of PRIMARY KEY(user_email,team_id),
    CONSTRAINT team_FK4 FOREIGN KEY(team_id) REFERENCES team(team_id) ON DELETE CASCADE
);