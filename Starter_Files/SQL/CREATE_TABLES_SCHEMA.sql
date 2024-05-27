-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/S00pMP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE Category (
    category_id varchar(30)   PRIMARY KEY,
    category varchar(100)   NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id varchar(30)   PRIMARY KEY,
    subcategory varchar(100)   NOT NULL
);

CREATE TABLE Contacts (
    contact_id int   PRIMARY KEY,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    email varchar(100)   NOT NULL
);

CREATE TABLE Campaign (
    cd_id int PRIMARY KEY,
    contact_id int NOT NULL,
    company_name varchar(100) NOT NULL,
    description_goal varchar(100) NOT NULL,
	goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(30) NOT NULL,
    backers_count int NOT NULL,
    country varchar(30) NOT NULL,
    currency varchar(30) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(30) NOT NULL,
    subcategory_id varchar(30) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);
