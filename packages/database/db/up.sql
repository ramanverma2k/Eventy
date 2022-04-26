CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "username" varchar UNIQUE,
  "password" varchar,
  "email" varchar,
  "first_name" varchar,
  "last_name" varchar,
  "contact_no" varchar,
  "image" varchar,
  "description" varchar
);

CREATE TABLE "events" (
  "id" uuid PRIMARY KEY,
  "organizer" uuid,
  "name" varchar,
  "type_id" int,
  "description" text,
  "image" varchar,
  "banner_image" varchar,
  "address" varchar,
  "location" json,
  "start_date" timestamp,
  "end_date" timestamp,
  "created_at" timestamp
);

CREATE TABLE "event_managers" (
  "id" SERIAL PRIMARY KEY,
  "user_id" uuid,
  "event_id" uuid
);

CREATE TABLE "event_type" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "attending" (
  "id" SERIAL PRIMARY KEY,
  "user_id" uuid,
  "event_id" uuid
);

CREATE TABLE "participating" (
  "id" SERIAL PRIMARY KEY,
  "user_id" uuid,
  "event_id" uuid,
  "approved" boolean
);

ALTER TABLE "events" ADD FOREIGN KEY ("organizer") REFERENCES "users" ("id");

ALTER TABLE "event_managers" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "event_managers" ADD FOREIGN KEY ("event_id") REFERENCES "events" ("id");

ALTER TABLE "events" ADD FOREIGN KEY ("type_id") REFERENCES "event_type" ("id");

ALTER TABLE "attending" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "attending" ADD FOREIGN KEY ("event_id") REFERENCES "events" ("id");

ALTER TABLE "participating" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "participating" ADD FOREIGN KEY ("event_id") REFERENCES "events" ("id");
