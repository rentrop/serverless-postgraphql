begin;

create schema floods;
create schema floods_private;

-- Make sure that we need to define permissions around functions
-- so we don't accidentally make something public.
alter default privileges revoke execute on functions from public;

-- Add geospatial column types and functions
create extension if not exists "postgis";

-- Create the Communities table
create table floods.community (
  id               serial primary key,
  name             text not null check (char_length(name) < 200),
  viewportgeojson  text
);

comment on table floods.community is 'A community defined by a geospatial area.';
comment on column floods.community.id is 'The primary unique identifier for the community.';
comment on column floods.community.name is 'The name of the community.';
comment on column floods.community.viewportgeojson is 'The viewport of the community.';

-- Create the users table
create table floods.user (
  id               serial primary key,
  first_name       text not null check (char_length(first_name) < 80),
  last_name        text not null check (char_length(last_name) < 80),
  role             text not null,
  job_title        text not null check (char_length(job_title) < 200),
  community_id     integer references floods.community(id),
  email_address    text check (char_length(email_address) < 200),
  phone_number     text check (char_length(phone_number) < 15),
  active           boolean default true
);

comment on table floods.user is 'A user of the flood tracking applicaiton.';
comment on column floods.user.id is 'The primary unique identifier for the user.';
comment on column floods.user.first_name is 'The user’s first name.';
comment on column floods.user.last_name is 'The user’s last name.';
comment on column floods.user.job_title is 'The user’s job title.';
comment on column floods.user.community_id is 'The id of the user’s community.';
comment on column floods.user.email_address is 'The user’s email address.';
comment on column floods.user.phone_number is 'The user’s phone number.';
comment on column floods.user.role is 'The user’s authorization role.';

-- Create the Crossings table
create table floods.crossing (
  id                serial primary key,
  name              text not null check (char_length(name) < 180),
  human_address     text not null check (char_length(human_address) < 800),
  description       text not null check (char_length(description) < 800),
  coordinates       geometry not null,
  geojson           text not null check (char_length(geojson) < 100),
  latest_status_created_at timestamp 
);

comment on table floods.crossing is 'A road crossing that might flood.';
comment on column floods.crossing.id is 'The primary unique identifier for the crossing.';
comment on column floods.crossing.name is 'The name of the crossing.';
comment on column floods.crossing.human_address is 'The human readable address of the crossing.';
comment on column floods.crossing.description is 'The description of the crossing.';
comment on column floods.crossing.coordinates is 'The GIS coordinates of the crossing created with ST_MakePoint.';
comment on column floods.crossing.geojson is 'The GeoJSON coordinates of the crossing.';
comment on column floods.crossing.latest_status_created_at is 'The timestamp of the latest status update for the crossing.';

-- Add trigrams for indexing
create extension if not exists "pg_trgm";

-- Add search index to crossings table
create index crossing_search_index on floods.crossing using gin(name gin_trgm_ops, human_address gin_trgm_ops, description gin_trgm_ops);

-- Create the Community Crossing relation table
create table floods.community_crossing (
  id               serial primary key,
  community_id     integer not null references floods.community(id),
  crossing_id      integer not null references floods.crossing(id)
);

comment on table floods.community_crossing is 'A relation between a crossing and a community.';
comment on column floods.community_crossing.id is 'The primary key for the community crossing relation.';
comment on column floods.community_crossing.community_id is 'The id of the community.';
comment on column floods.community_crossing.crossing_id is 'The id of the crossing.';

-- Create the Status table
create table floods.status (
  id               serial primary key,
  name             text not null check (char_length(name) < 80)
);

comment on table floods.status is 'A status a crossing might be in.';
comment on column floods.status.id is 'The primary unique identifier for the status.';
comment on column floods.status.name is 'The name of the status.';

-- Create the Status Reason table
create table floods.status_reason (
  id               serial primary key,
  status_id        integer not null references floods.status(id),
  name             text not null check (char_length(name) < 80)
);

comment on table floods.status_reason is 'A reason a crossing might be in a given status.';
comment on column floods.status_reason.id is 'The primary unique identifier for the status reason.';
comment on column floods.status_reason.status_id is 'The id of the status the reason applies to.';
comment on column floods.status_reason.name is 'The name of the status reason.';

-- Create the Status Duration table
create table floods.status_duration (
  id               serial primary key,
  name             text not null check (char_length(name) < 80),
  timespan         interval not null
);

comment on table floods.status_duration is 'The amount of time a crossing might be in a given status.';
comment on column floods.status_duration.id is 'The primary unique identifier for the status duration.';
comment on column floods.status_duration.name is 'The name of the status reason.';
comment on column floods.status_duration.timespan is 'The timespan of the status reason.';

-- Create status detail type
create type floods.status_detail as enum (
  'reason',
  'duration'
);

-- Create status rule type
create type floods.status_rule as enum (
  'disabled',
  'enabled',
  'required'
);

-- Create the Status Associations table
create table floods.status_association (
  id               serial primary key,
  status_id        integer not null references floods.status(id),
  detail           floods.status_detail not null,
  rule             floods.status_rule not null
);

comment on table floods.status_association is 'An association of a status to a rule about status details.';
comment on column floods.status_association.id is 'The primary unique identifier for the status association.';
comment on column floods.status_association.detail is 'The type of detailed information in the association.';
comment on column floods.status_association.rule is 'The rule about the permissions in the association.';

-- Create the Status Update table
create table floods.status_update (
  id                  serial primary key,
  status_id           integer not null references floods.status(id),
  creator_id          integer not null references floods.user(id),
  crossing_id         integer not null references floods.crossing(id),
  status_reason_id    integer references floods.status_reason(id),
  status_duration_id  integer references floods.status_duration(id),
  notes               text not null check (char_length(notes) < 800),
  created_at          timestamp default now()
);

comment on table floods.status_update is 'A status update of a crossing.';
comment on column floods.status_update.id is 'The primary key for the status update.';
comment on column floods.status_update.status_id is 'The id of the status.';
comment on column floods.status_update.creator_id is 'The id of the user who created the status update.';
comment on column floods.status_update.crossing_id is 'The id of the crossing.';
comment on column floods.status_update.status_reason_id is 'The id of the status reason.';
comment on column floods.status_update.status_duration_id is 'The id of the status duration.';
comment on column floods.status_update.notes is 'Notes about the status update.';
comment on column floods.status_update.created_at is 'The time this update was made.';

-- Update the Crossings table and Add the Latest Status Update
alter table floods.crossing
  add column latest_status_update_id integer references floods.status_update(id);
comment on column floods.crossing.latest_status_update_id is 'The latest status update of the crossing.';

-- Update the Crossings table and Add the Latest Status
alter table floods.crossing
  add column latest_status_id integer references floods.status(id);
comment on column floods.crossing.latest_status_id is 'The latest status of the crossing.';

-- Create the private account table
create table floods_private.user_account (
  user_id          integer primary key references floods.user(id) on delete cascade,
  email            text not null unique check (email ~* '^.+@.+\..+$'),
  role             text not null,
  community_id     integer references floods.community(id),
  password_hash    text not null
);

comment on table floods_private.user_account is 'Private information about a user’s account.';
comment on column floods_private.user_account.user_id is 'The id of the user associated with this account.';
comment on column floods_private.user_account.email is 'The email address of the user.';
comment on column floods_private.user_account.role is 'The role of the user.';
comment on column floods_private.user_account.password_hash is 'An opaque hash of the user’s password.';

-- Create function to register new users
create extension if not exists "pgcrypto";

create function floods.register_user(
  first_name text,
  last_name text,
  job_title text,
  community_id integer,
  phone_number text,
  email text,
  password text,
  role text
) returns floods.user as $$
declare
  floods_user floods.user;
begin
  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we are a community admin
    if current_setting('jwt.claims.role') = 'floods_community_admin' then
      -- and we're trying to add a user to a different community
      if current_setting('jwt.claims.community_id')::integer != community_id then
        raise exception 'Community administrators can only add editors to the communities they administrate';
      end if;
      -- and we're trying to add someone other than a community editor
      if role != 'floods_community_editor' then
        raise exception 'Community administrators can only add editors to the communities they administrate';
      end if;
    -- all other roles shouldn't be here
    else
      raise exception 'Only administrators can add new users';
    end if;
  end if;

  insert into floods.user (first_name, last_name, role, job_title, community_id, email_address, phone_number) values
    (first_name, last_name, role, job_title, community_id, email, phone_number)
    returning * into floods_user;

  insert into floods_private.user_account (user_id, email, role, community_id, password_hash) values
    (floods_user.id, email, role, community_id, crypt(password, gen_salt('bf')));

  return floods_user;
end;
$$ language plpgsql strict security definer;

comment on function floods.register_user(text, text, text, integer, text, text, text, text) is 'Registers a single user and creates an account.';

-- Create function to delete users
create function floods.deactivate_user(
  user_id integer
) returns floods.user as $$
declare
  floods_user floods.user;
  deactivated_user floods.user;
begin
  -- Get the user
  select * from floods.user where id = user_id into floods_user;

  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we are a community admin
    if current_setting('jwt.claims.role') = 'floods_community_admin' then
      -- and we're trying to delete a user in a different community
      if current_setting('jwt.claims.community_id')::integer != floods_user.community_id then
        raise exception 'Community administrators can only deactivate users in their community';
      end if;
    end if;

    -- and we are a community editor
    if current_setting('jwt.claims.role') = 'floods_community_editor' then
      -- and we're trying to delete a user other than ourselves
      if current_setting('jwt.claims.user_id')::integer != floods_user.id then
        raise exception 'Community editors can only deactivate themselves';
      end if;
    end if;

  end if;

  delete from floods_private.user_account where floods_private.user_account.user_id = deactivate_user.user_id;

  update floods.user
    set active = false
    where id = user_id
    returning * into deactivated_user;

  return deactivated_user;
end;
$$ language plpgsql strict security definer;

comment on function floods.deactivate_user(integer) is 'Deactivates a user and deletes their accountfrom the database.';

-- Create function to reactivate users
create function floods.reactivate_user(
  user_id integer,
  email text,
  password text,
  role text
) returns floods.user as $$
declare
  deactivated_user floods.user;
  floods_user floods.user;
begin
  -- Get the deactivated user
  select * from floods.user where id = user_id into deactivated_user;

  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we are a community admin
    if current_setting('jwt.claims.role') = 'floods_community_admin' then
      -- and we're trying to add a user to a different community
      if current_setting('jwt.claims.community_id')::integer != deactivated_user.community_id then
        raise exception 'Community administrators can only reactivate editors in communities they administrate';
      end if;
      -- and we're trying to add someone other than a community editor
      if role != 'floods_community_editor' then
        raise exception 'Community administrators can only reactivate editors in communities they administrate';
      end if;
    -- all other roles shouldn't be here
    else
      raise exception 'Only administrators can reactivate users';
    end if;
  end if;

  insert into floods_private.user_account (user_id, email, role, community_id, password_hash) values
    (deactivated_user.id, email, role, deactivated_user.community_id, crypt(password, gen_salt('bf')));

  update floods.user
    set active = true
    where id = user_id
    returning * into floods_user;

  return floods_user;
end;
$$ language plpgsql strict security definer;

comment on function floods.reactivate_user(integer, text, text, text) is 'Reactivates a user and creates an account.';

-- Create function to search crossings
create function floods.search_crossings(
  search text default null,
  show_open boolean default true,
  show_closed boolean default true,
  show_caution boolean default true,
  show_longterm boolean default true,
  order_asc boolean default false
) returns setof floods.crossing as $$
  select *
  from floods.crossing
  where (
    (name ilike search) or
    (description ilike search) or
    (human_address ilike search)
  ) and (
  (latest_status_id = 1 and show_open) or
  (latest_status_id = 2 and show_closed) or
  (latest_status_id = 3 and show_caution) or
  (latest_status_id = 4 and show_longterm)
  )
  order by 
    case 
      when order_asc
        then latest_status_created_at end asc,
    case
      when order_asc = false
        then latest_status_created_at end desc;
$$ language sql stable security definer;

comment on function floods.search_crossings(text, boolean, boolean, boolean, boolean, boolean) is 'Searches users.';


-- Create function to search users
-- TODO: plainto_tsquery probably won't do everything we need, so we'll need to implement something else to form a valid tsquery for search on the frontend
create function floods.search_users(
  search text default null,
  community integer default null
) returns setof floods.user as $$
  select resultuser
  from (select
      u as resultuser,
      to_tsvector(u.first_name) ||
      to_tsvector(u.last_name) ||
      to_tsvector(c.name) as document
    from
      floods.user u,
      floods.community c
    where
      u.community_id = c.id and
      (community is null or community = u.community_id)
  ) user_search
  where search is null or user_search.document @@ plainto_tsquery(search);
$$ language sql stable security definer;

comment on function floods.search_users(text, integer) is 'Searches users.';

-- Create function to update status
-- TODO: Figure out how to make reason and duration dynamic
create function floods.new_status_update(
  status_id integer,
  crossing_id integer,
  notes text,
  status_reason_id integer,
  status_duration_id integer
) returns floods.status_update as $$
declare
  floods_status_update floods.status_update;
begin
  -- TODO: Remove this hacky fix and redefine as strict after
    -- https://github.com/postgraphql/postgraphql/issues/438 is closed
  if status_id is null then
    raise exception 'Status is required';
  end if;

  if crossing_id is null then
    raise exception 'Crossing is required';
  end if;

  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we're trying to update the status of a crossing in a different community
    if current_setting('jwt.claims.community_id')::integer != (select community_id from floods.community_crossing where floods.community_crossing.crossing_id = new_status_update.crossing_id) then
      raise exception 'Users can only update the status of crossings within their communities';
    end if;
  end if;

  -- If the status reason is not null
  if status_reason_id is not null then
    -- but the association says it should be disabled
    if (select rule from floods.status_association where floods.status_association.status_id = new_status_update.status_id and detail = 'reason') = 'disabled' then
      -- we shouldn't be here, throw
      raise exception 'Status reasons are disabled for status:  %', (select name from floods.status where id = status_id);
    end if;

    -- but the status reason is for a different status
    if (select floods.status_reason.status_id from floods.status_reason where id = status_reason_id) != new_status_update.status_id then
      -- we shouldn't be here, throw
      raise exception 'This status reason is not for status:  %', (select name from floods.status where id = new_status_update.status_id);
    end if;
  end if;

  -- If the status reason is null
  if status_reason_id is null then
    -- but the association says it is required
    if (select rule from floods.status_association where floods.status_association.status_id = new_status_update.status_id and detail = 'reason') = 'required' then
      -- we shouldn't be here, throw
      raise exception 'Status reasons are required for status:  %', (select name from floods.status where id = status_id);
    end if;
  end if;

  -- If the status duration is not null
  if status_duration_id is not null then
    -- but the association says it should be disabled
    if (select rule from floods.status_association where floods.status_association.status_id = new_status_update.status_id and detail = 'duration') = 'disabled' then
      -- we shouldn't be here, throw
      raise exception 'Status durations are disabled for status:  %', (select name from floods.status where id = status_id);
    end if;
  end if;

  -- If the status reason is null
  if status_duration_id is null then
    -- but the association says it is required
    if (select rule from floods.status_association where floods.status_association.status_id = new_status_update.status_id and detail = 'duration') = 'required' then
      -- we shouldn't be here, throw
      raise exception 'Status durations are required for status:  %', (select name from floods.status where id = status_id);
    end if;
  end if;

  insert into floods.status_update (status_id, creator_id, crossing_id, notes, status_reason_id, status_duration_id) values
    (status_id, current_setting('jwt.claims.user_id')::integer, crossing_id, notes, status_reason_id, status_duration_id)
    returning * into floods_status_update;

  update floods.crossing
    set latest_status_update_id = floods_status_update.id
    where id = floods_status_update.crossing_id;

  update floods.crossing
    set latest_status_id = floods_status_update.status_id
    where id = floods_status_update.crossing_id;

  update floods.crossing
    set latest_status_created_at = floods_status_update.created_at
    where id = floods_status_update.crossing_id;

  return floods_status_update;
end;
$$ language plpgsql security definer;

comment on function floods.new_status_update(integer, integer, text, integer, integer) is 'Updates the status of a crossing.';

-- Create function to create new crossings
create function floods.new_crossing(
  name text,
  human_address text,
  description text,
  community_id integer,
  longitude decimal,
  latitude decimal
) returns floods.crossing as $$
declare
  floods_crossing floods.crossing;
begin
  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we're trying to add a crossing to a different community
    if current_setting('jwt.claims.community_id')::integer != community_id then
      raise exception 'Users can only add crossings to their communities';
    end if;
  end if;

  insert into floods.crossing (name, human_address, description, coordinates, geojson) values
    (name, human_address, description, ST_MakePoint(longitude, latitude), ST_AsGeoJSON(ST_MakePoint(longitude, latitude)))
    returning * into floods_crossing;

  insert into floods.community_crossing (community_id, crossing_id) values
    (community_id, floods_crossing.id);

  -- Update the community viewport
  update floods.community
    set viewportgeojson = (select ST_AsGeoJSON(ST_Extent(c.coordinates)) from floods.crossing c, floods.community_crossing cc where cc.crossing_id = c.id and cc.community_id = new_crossing.community_id)
    where id = new_crossing.community_id;

  return floods_crossing;
end;
$$ language plpgsql strict security definer;

comment on function floods.new_crossing(text, text, text, integer, decimal, decimal) is 'Adds a crossing.';

create function floods.crossing_human_coordinates(crossing floods.crossing) returns text as $$
  select ST_AsLatLonText(crossing.coordinates);
$$ language sql stable security definer;

comment on function floods.crossing_human_coordinates(floods.crossing) is 'Adds a human readable coordinates as a string in the Degrees, Minutes, Seconds representation.';

-- Create function to delete crossings
create function floods.remove_crossing(
  crossing_id integer
) returns floods.crossing as $$
declare
  floods_community_crossing floods.community_crossing;
  deleted_crossing floods.crossing;
begin
  -- Get the community from the crossing
  select * from floods.community_crossing where floods.community_crossing.crossing_id = remove_crossing.crossing_id into floods_community_crossing;

  -- If we aren't a super admin
  if current_setting('jwt.claims.role') != 'floods_super_admin' then
    -- and we are a community admin
    if current_setting('jwt.claims.role') = 'floods_community_admin' then
      -- and we're trying to delete a user in a different community
      if current_setting('jwt.claims.community_id')::integer != floods_community_crossing.community_id then
        raise exception 'Community administrators can only delete crossings in their community';
      end if;
    -- all other roles shouldn't be here
    else
      raise exception 'Only administrators can delete crossings';
    end if;
  end if;

  delete from floods.community_crossing where floods.community_crossing.crossing_id = remove_crossing.crossing_id;

  delete from floods.crossing where id = crossing_id returning * into deleted_crossing;

  return deleted_crossing;
end;
$$ language plpgsql strict security definer;

comment on function floods.remove_crossing(integer) is 'Removes a crossing from the database.';

-- Create function to edit crossing
create function floods.edit_crossing(
  crossing_id integer,
  name text,
  description text
) returns floods.crossing as $$
declare
  floods_crossing floods.crossing;
begin

  update floods.crossing
    set name = edit_crossing.name,
        description = edit_crossing.description
    where id = crossing_id
    returning * into floods_crossing;

  return floods_crossing;
end;
$$ language plpgsql strict security definer;

comment on function floods.edit_crossing(integer, text, text) is 'Edits an existing crossing.';

-- Create function to create new statuses
create function floods.new_status(
  name text
) returns floods.status as $$
declare
  floods_status floods.status;
begin
  insert into floods.status (name) values
    (name)
    returning * into floods_status;

  return floods_status;
end;
$$ language plpgsql strict security definer;

comment on function floods.new_status(text) is 'Adds a status.';

-- Create function to change status names
create function floods.change_status_name(
  status_id integer,
  name text
) returns floods.status as $$
declare
  floods_status floods.status;
begin
  update floods.status
    set name = change_status_name.name
    where id = status_id
    returning * into floods_status;

  return floods_status;
end;
$$ language plpgsql strict security definer;

comment on function floods.change_status_name(integer, text) is 'Changes the name of a status.';

-- Create function to delete status
create function floods.delete_status(
  status_id integer
) returns floods.status as $$
declare
  floods_status floods.status;
begin
  delete from floods.status where id = status_id
    returning * into floods_status;

  return floods_status;
end;
$$ language plpgsql strict security definer;

comment on function floods.delete_status(integer) is 'Deletes a status.';

-- Create function to create new status reasons
create function floods.new_status_reason(
  status_id integer,
  name text
) returns floods.status_reason as $$
declare
  floods_status_reason floods.status_reason;
begin
  insert into floods.status_reason (status_id, name) values
    (status_id, name)
    returning * into floods_status_reason;

  return floods_status_reason;
end;
$$ language plpgsql strict security definer;

comment on function floods.new_status_reason(integer, text) is 'Adds a status reason.';

-- Create function to change status names
create function floods.change_status_reason_name(
  status_reason_id integer,
  name text
) returns floods.status_reason as $$
declare
  floods_status_reason floods.status_reason;
begin
  update floods.status_reason
    set name = change_status_reason_name.name
    where id = status_reason_id
    returning * into floods_status_reason;

  return floods_status_reason;
end;
$$ language plpgsql strict security definer;

comment on function floods.change_status_reason_name(integer, text) is 'Changes the name of a status reason.';

-- Create function to delete status reason
create function floods.delete_status_reason(
  status_reason_id integer
) returns floods.status_reason as $$
declare
  floods_status_reason floods.status_reason;
begin
  delete from floods.status_reason where id = status_reason_id
    returning * into floods_status_reason;

  return floods_status_reason;
end;
$$ language plpgsql strict security definer;

comment on function floods.delete_status_reason(integer) is 'Deletes a status reason.';

-- Create function to create new status durations
create function floods.new_status_duration(
  name text,
  timespan interval
) returns floods.status_duration as $$
declare
  floods_status_duration floods.status_duration;
begin
  insert into floods.status_duration (name, timespan) values
    (name, timespan)
    returning * into floods_status_duration;

  return floods_status_duration;
end;
$$ language plpgsql strict security definer;

comment on function floods.new_status_duration(text, interval) is 'Adds a status duration.';

-- Create function to change status names
create function floods.change_status_duration_name(
  status_duration_id integer,
  name text
) returns floods.status_duration as $$
declare
  floods_status_duration floods.status_duration;
begin
  update floods.status_duration
    set name = change_status_duration_name.name
    where id = status_duration_id
    returning * into floods_status_duration;

  return floods_status_duration;
end;
$$ language plpgsql strict security definer;

comment on function floods.change_status_duration_name(integer, text) is 'Changes the name of a status duration.';

-- Create function to delete status duration
create function floods.delete_status_duration(
  status_duration_id integer
) returns floods.status_duration as $$
declare
  floods_status_duration floods.status_duration;
begin
  delete from floods.status_duration where id = status_duration_id
    returning * into floods_status_duration;

  return floods_status_duration;
end;
$$ language plpgsql strict security definer;

comment on function floods.delete_status_duration(integer) is 'Deletes a status duration.';

-- Create function to create new communities
create function floods.new_community(
  name text
) returns floods.community as $$
declare
  floods_community floods.community;
begin
  insert into floods.community (name) values
    (name)
    returning * into floods_community;

  return floods_community;
end;
$$ language plpgsql strict security definer;

comment on function floods.new_community(text) is 'Adds a community.';

-- Create function to change community names
create function floods.change_community_name(
  community_id integer,
  name text
) returns floods.community as $$
declare
  floods_community floods.community;
begin
  update floods.community
    set name = change_community_name.name
    where id = community_id
    returning * into floods_community;

  return floods_community;
end;
$$ language plpgsql strict security definer;

comment on function floods.change_community_name(integer, text) is 'Changes the name of a community.';

-- Create function to delete community
create function floods.delete_community(
  community_id integer
) returns floods.community as $$
declare
  floods_community floods.community;
begin
  delete from floods.community where id = community_id
    returning * into floods_community;

  return floods_community;
end;
$$ language plpgsql strict security definer;

comment on function floods.delete_community(integer) is 'Deletes a community.';

-- Define roles
create role floods_postgraphql login password 'xyz';

create role floods_anonymous;
create role floods_community_editor;
grant floods_anonymous to floods_community_editor;

create role floods_community_admin;
grant floods_community_editor to floods_community_admin;

create role floods_super_admin;
grant floods_community_admin to floods_super_admin;
grant floods_super_admin to floods_postgraphql;

-- Create JWT token type for authentication
create type floods.jwt_token as (
  role text,
  user_id integer,
  community_id integer
);

-- Create function to authenticate users by email and password, returning a jwt token
create function floods.authenticate(
  email text,
  password text
) returns floods.jwt_token as $$
declare
  account floods_private.user_account;
begin
  select a.* into account
  from floods_private.user_account as a
  where a.email = $1;

  if account.password_hash = crypt(password, account.password_hash) then
    return (account.role, account.user_id, account.community_id)::floods.jwt_token;
  else
    return null;
  end if;
end;
$$ language plpgsql strict security definer;

comment on function floods.authenticate(text, text) is 'Creates a JWT token that will securely identify a user and give them certain permissions.';

-- Create a function to get the current user
create function floods.current_user() returns floods.user as $$
  select *
  from floods.user
  where id = current_setting('jwt.claims.user_id')::integer
$$ language sql stable;

comment on function floods.current_user() is 'Gets the user who was identified by our JWT.';

-- Define permissions for roles
grant usage on schema floods to floods_anonymous;

-- Allow all users to view some data
-- TODO: Column Level Security, PostgraphQL doesn't currently support it (https://github.com/postgraphql/postgraphql/issues/151)
grant select on table floods.user to floods_anonymous;
grant select on table floods.community to floods_anonymous;
grant select on table floods.status to floods_anonymous;
grant select on table floods.status_update to floods_anonymous;
grant select on table floods.status_reason to floods_anonymous;
grant select on table floods.status_duration to floods_anonymous;
grant select on table floods.status_association to floods_anonymous;
grant select on table floods.crossing to floods_anonymous;
grant select on table floods.community_crossing to floods_anonymous;

-- Allow all users to log in and get an auth token
grant execute on function floods.authenticate(text, text) to floods_anonymous;

-- Allow all users to search users
grant execute on function floods.search_users(text, integer) to floods_anonymous;

-- Allow all users to search crossings
grant execute on function floods.search_crossings(text, boolean, boolean, boolean, boolean, boolean) to floods_anonymous;

-- Allow community admins and up to register new users
-- NOTE: Extra logic around permissions in function
grant execute on function floods.register_user(text, text, text, integer, text, text, text, text) to floods_community_admin;

-- Allow community admins and up to remove users
-- NOTE: Extra logic around permissions in function
grant execute on function floods.deactivate_user(integer) to floods_community_editor;

-- Allow community admins and up to reactivate users
-- NOTE: Extra logic around permissions in function
grant execute on function floods.reactivate_user(integer, text, text, text) to floods_community_admin;

-- Allow community editors and up to get the current logged in user
grant execute on function floods.current_user() to floods_community_editor;

-- Allow community editors and up to update the status of crossings
-- NOTE: Extra logic around permissions in function
grant execute on function floods.new_status_update(integer, integer, text, integer, integer) to floods_community_editor;

-- Allow community editors and up to add/edit crossings
-- NOTE: Extra logic around permissions in function
grant execute on function floods.new_crossing(text, text, text, integer, decimal, decimal) to floods_community_editor;
grant execute on function floods.edit_crossing(integer, text, text) to floods_community_editor;

-- Allow community admins and up to remove crossings
-- NOTE: Extra logic around permissions in function
grant execute on function floods.remove_crossing(integer) to floods_community_admin;

-- Allow super admins to create/edit/delete communities
grant execute on function floods.new_community(text) to floods_super_admin;
grant execute on function floods.change_community_name(integer, text) to floods_super_admin;
grant execute on function floods.delete_community(integer) to floods_super_admin;

-- Allow super admins to create/edit/delete statuses
grant execute on function floods.new_status(text) to floods_super_admin;
grant execute on function floods.change_status_name(integer, text) to floods_super_admin;
grant execute on function floods.delete_status(integer) to floods_super_admin;

-- Allow super admins to create/edit/delete status reasons
grant execute on function floods.new_status_reason(integer, text) to floods_super_admin;
grant execute on function floods.change_status_reason_name(integer, text) to floods_super_admin;
grant execute on function floods.delete_status_reason(integer) to floods_super_admin;

-- Allow super admins to create/edit/delete status reasons
grant execute on function floods.new_status_duration(text, interval) to floods_super_admin;
grant execute on function floods.change_status_duration_name(integer, text) to floods_super_admin;
grant execute on function floods.delete_status_duration(integer) to floods_super_admin;

-- Allow all users to get the human coordinates of a crossing
grant execute on function floods.crossing_human_coordinates(floods.crossing) to floods_anonymous;

commit;
