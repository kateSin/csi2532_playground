CREATE TABLE athletes (
    id int,
    identifier varchar(50),
    created timestamp,
    modified timestamp,
    name varchar(1000),
    dob date,
    identified_gender varchar(100),
    PRIMARY KEY (id)
);