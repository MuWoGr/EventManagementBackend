begin;

create table users (
  user_username text, --PRIMARY KEY
  user_password text --NOT NULL
);

create table disponibility (
  disponibility_id smallint PRIMARY KEY,
  disponibility_status text NOT NULL
);

insert into disponibility(disponibility_id,disponibility_status) values(0,'available');
insert into disponibility(disponibility_id,disponibility_status) values(1,'unavailable');
insert into disponibility(disponibility_id,disponibility_status) values(2,'maybe');


create table sport_type (
  sport_type_id SERIAL, --PRIMARY KEY
  sport_type_name text --NOT NULL
);

create table procedure (
  procedure_id SERIAL, --PRIMARY KEY
  precedure_timestamp timestamp, --NOT NULL
  procedure_info text --NOT NULL
);

create table skill (
  skill_id SERIAL, --PRIMARY KEY
  skill_name text --NOT NULL
);

create table location (
  location_id serial, --PRIMARY KEY
  location_address text, --NOT NULL
  location_geo geometry(Point, 4326) --NOT NULL
);

create table person (
  person_id serial,--PRIMARY KEY
  person_name text, --NOT NULL
  person_telephone text,
  person_email text,
  person_is_worker boolean, --NOT NULL
  person_location_id integer
)

commit;