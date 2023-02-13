CREATE TABLE "campaign" (
"cf_id" int   NOT NULL,
"company_name" varchar(100)   NOT NULL,
"description" text   NOT NULL,
"goal" numeric(10,2)   NOT NULL,
"pledged" numeric(10,2)   NOT NULL,
"outcome" varchar(50)   NOT NULL,
"backers_count" int   NOT NULL,
"country" varchar(10)   NOT NULL,
"currency" varchar(10)   NOT NULL,
"launch_date" date   NOT NULL,
"end_date" date   NOT NULL,
"category_id" varchar(10)   NOT NULL,
"subcategory_id" varchar(10)   NOT NULL,
CONSTRAINT "pk_campaign" PRIMARY KEY (
"cf_id"
)

);
CREATE TABLE "category" (
"category_id" varchar(10)   NOT NULL,
"category_name" varchar(50)   NOT NULL,
CONSTRAINT "pk_category" PRIMARY KEY (
"category_id"
)
);	
 CREATE TABLE "subcategory" (
"subcategory_id" varchar(10)   NOT NULL,
"subcategory_name" varchar(50)   NOT NULL,
CONSTRAINT "pk_subcategory" PRIMARY KEY (
"subcategory_id"

)
 );
CREATE TABLE "contacts" (
"contact_id" int   NOT NULL,
"first_name" varchar(50)   NOT NULL,
"last_name" varchar(50)   NOT NULL,
"email" varchar(100)   NOT NULL,
CONSTRAINT "pk_contacts" PRIMARY KEY (
"contact_id"
)
); 
CREATE TABLE "backers" (
"backer_id" varchar(10)   NOT NULL,
"cf_id" int   NOT NULL,
"first_name" varchar(50)   NOT NULL,
"last_name" varchar(50)   NOT NULL,
"email" varchar(100)   NOT NULL,
CONSTRAINT "PK_BACKERS" PRIMARY KEY ("backer_id")
); 

drop table "backers"

CREATE TABLE "backers" (
"backer_id" varchar(10)   NOT NULL,
"cf_id" int   NOT NULL,
"first_name" varchar(50)   NOT NULL,
"last_name" varchar(50)   NOT NULL,
"email" varchar(100)   NOT NULL,
CONSTRAINT "PK_BACKERS" PRIMARY KEY ("backer_id")
);

SELECT * FROM backers;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id"); 
 
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id"); 
 
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
 
ALTER TABLE "backers" ADD CONSTRAINT "fk_backers_cf_id" FOREIGN KEY("cf_id")
REFERENCES "campaign" ("cf_id");
 
 select *select *
from email_backers_remaining_goal_amount

drop table email_contacts_remaining_goal_amount
 CREATE TABLE "campaign" (
"cf_id" int   NOT NULL,
"company_name" varchar(100)   NOT NULL,
"description" text   NOT NULL,
"goal" numeric(10,2)   NOT NULL,
"pledged" numeric(10,2)   NOT NULL,
"outcome" varchar(50)   NOT NULL,
"backers_count" int   NOT NULL,
"country" varchar(10)   NOT NULL,
"currency" varchar(10)   NOT NULL,
"launch_date" date   NOT NULL,
"end_date" date   NOT NULL,
"category_id" varchar(50)   NOT NULL,
"subcategory_id" varchar(50)   NOT NULL,
 CONSTRAINT "pk_campaign" PRIMARY KEY (
  "cf_id"
         )
 );
	 
Check the table

select *
from email_backers_remaining_goal_amount

 select distinct b.email,b.first_name, b.last_name,b.cf_id,ca.company_name,ca.end_date, ca.description,ca.goal - ca.pledged as Left_of_goal
into email_backers_remaining_goal_amount
from campaign ca
left join backers b on (ca.cf_id = b.cf_id)
where ca.outcome = 'live'
order by b.last_name

select c.first_name, c.last_name, c.email,ca.goal - ca.pledged as remaining_goal_amount
into email_contacts_remaining_goal_amount
from contacts c
left join campaign ca on (ca.cf_id = ca.cf_id)
where ca.outcome = 'live'
order by remaining_goal_amount desc

from email_backers_remaining_goal_amount

drop table email_contacts_remaining_goal_amount
 CREATE TABLE "campaign" (
"cf_id" int   NOT NULL,
"company_name" varchar(100)   NOT NULL,
"description" text   NOT NULL,
"goal" numeric(10,2)   NOT NULL,
"pledged" numeric(10,2)   NOT NULL,
"outcome" varchar(50)   NOT NULL,
"backers_count" int   NOT NULL,
"country" varchar(10)   NOT NULL,
"currency" varchar(10)   NOT NULL,
"launch_date" date   NOT NULL,
"end_date" date   NOT NULL,
"category_id" varchar(50)   NOT NULL,
"subcategory_id" varchar(50)   NOT NULL,
 CONSTRAINT "pk_campaign" PRIMARY KEY (
  "cf_id"
         )
 );
	 
Check the table

select *
from email_backers_remaining_goal_amount

 select distinct b.email,b.first_name, b.last_name,b.cf_id,ca.company_name,ca.end_date, ca.description,ca.goal - ca.pledged as Left_of_goal
into email_backers_remaining_goal_amount
from campaign ca
left join backers b on (ca.cf_id = b.cf_id)
where ca.outcome = 'live'
order by b.last_name

select c.first_name, c.last_name, c.email,ca.goal - ca.pledged as remaining_goal_amount
into email_contacts_remaining_goal_amount
from contacts c
left join campaign ca on (ca.cf_id = ca.cf_id)
where ca.outcome = 'live'
order by remaining_goal_amount desc
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 