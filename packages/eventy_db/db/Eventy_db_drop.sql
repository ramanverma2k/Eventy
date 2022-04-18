-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-16 13:44:03.555

-- foreign keys
ALTER TABLE attending
    DROP CONSTRAINT attending_event;

ALTER TABLE attending
    DROP CONSTRAINT attending_user;

ALTER TABLE event_manager
    DROP CONSTRAINT event_event_manager;

ALTER TABLE event
    DROP CONSTRAINT event_event_type;

ALTER TABLE event_manager
    DROP CONSTRAINT event_manager_user;

ALTER TABLE event
    DROP CONSTRAINT event_organizer;

ALTER TABLE participating
    DROP CONSTRAINT participating_event;

ALTER TABLE participating
    DROP CONSTRAINT participating_user;

-- tables
DROP TABLE attending;

DROP TABLE event;

DROP TABLE event_manager;

DROP TABLE event_type;

DROP TABLE participating;

DROP TABLE "user";

-- End of file.

