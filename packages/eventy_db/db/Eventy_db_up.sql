-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-19 04:40:14.542

-- tables
-- Table: attending
CREATE TABLE attending (
    id serial  NOT NULL,
    user_id uuid  NOT NULL,
    event_id uuid  NOT NULL,
    CONSTRAINT attending_pk PRIMARY KEY (id)
);

CREATE INDEX attending_user on attending (user_id ASC);

CREATE INDEX attending_event on attending (event_id ASC);

-- Table: event
CREATE TABLE event (
    id uuid  NOT NULL,
    organizer uuid  NOT NULL,
    name varchar(255)  NOT NULL,
    type_id int  NOT NULL,
    description text  NOT NULL,
    image text  NULL,
    banner_image text  NULL,
    address text  NOT NULL,
    location json  NOT NULL,
    start_date timestamp  NOT NULL,
    end_date timestamp  NOT NULL,
    CONSTRAINT event_pk PRIMARY KEY (id)
);

CREATE INDEX event_organizer on event (organizer ASC);

CREATE INDEX event_type_idx on event (type_id ASC);

-- Table: event_manager
CREATE TABLE event_manager (
    id serial  NOT NULL,
    user_id uuid  NOT NULL,
    event_id uuid  NOT NULL,
    CONSTRAINT event_manager_pk PRIMARY KEY (id)
);

CREATE INDEX event_manager_user on event_manager (user_id ASC);

CREATE INDEX event_manager_event on event_manager (event_id ASC);

-- Table: event_type
CREATE TABLE event_type (
    id serial  NOT NULL,
    type_name varchar(255)  NOT NULL,
    CONSTRAINT event_type_pk PRIMARY KEY (id)
);

-- Table: participating
CREATE TABLE participating (
    id serial  NOT NULL,
    user_id uuid  NOT NULL,
    event_id uuid  NOT NULL,
    approved boolean  NULL,
    CONSTRAINT participating_pk PRIMARY KEY (id)
);

CREATE INDEX participating_user on participating (user_id ASC);

CREATE INDEX participating_event on participating (event_id ASC);

-- Table: user
CREATE TABLE "user" (
    id uuid  NOT NULL,
    username varchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    password varchar(255)  NOT NULL,
    first_name varchar(255)  NOT NULL,
    last_name varchar(255)  NOT NULL,
    contact_no varchar(10)  NOT NULL,
    description text  NOT NULL,
    image text  NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: attending_event (table: attending)
ALTER TABLE attending ADD CONSTRAINT attending_event
    FOREIGN KEY (event_id)
    REFERENCES event (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: attending_user (table: attending)
ALTER TABLE attending ADD CONSTRAINT attending_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: event_event_manager (table: event_manager)
ALTER TABLE event_manager ADD CONSTRAINT event_event_manager
    FOREIGN KEY (event_id)
    REFERENCES event (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: event_event_type (table: event)
ALTER TABLE event ADD CONSTRAINT event_event_type
    FOREIGN KEY (type_id)
    REFERENCES event_type (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: event_manager_user (table: event_manager)
ALTER TABLE event_manager ADD CONSTRAINT event_manager_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: event_organizer (table: event)
ALTER TABLE event ADD CONSTRAINT event_organizer
    FOREIGN KEY (organizer)
    REFERENCES "user" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: participating_event (table: participating)
ALTER TABLE participating ADD CONSTRAINT participating_event
    FOREIGN KEY (event_id)
    REFERENCES event (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: participating_user (table: participating)
ALTER TABLE participating ADD CONSTRAINT participating_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

