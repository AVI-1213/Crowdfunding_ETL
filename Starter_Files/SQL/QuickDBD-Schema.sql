-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/S00pMP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Campaign" (
    "cd_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" string   NOT NULL,
    "description_goal" string   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" float   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" string   NOT NULL,
    "currency" string   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" string   NOT NULL,
    "subcategory_id" string   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cd_id"
     )
);

CREATE TABLE "Category" (
    "category_id" string   NOT NULL,
    "category" string   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" string   NOT NULL,
    "subcategory" string   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "email" string   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

CREATE INDEX "idx_Campaign_contact_id"
ON "Campaign" ("contact_id");

CREATE INDEX "idx_Campaign_category_id"
ON "Campaign" ("category_id");

CREATE INDEX "idx_Campaign_subcategory_id"
ON "Campaign" ("subcategory_id");

