begin;

-- Add communities
insert into floods.community (id, name) values
  (1, 'All of Texas.'),
  (2, 'Everywhere else.');
alter sequence floods.community_id_seq restart with 3;

-- Add users

-- Set the jwt claim settings so the register user function works
-- Make sure they're local so we actually use the token outside of this script
select set_config('jwt.claims.community_id', '1', true);
select set_config('jwt.claims.role', 'floods_super_admin', true);

alter sequence floods.user_id_seq restart with 1;
select floods.register_user(text 'Super', text 'Admin', text 'Superhero, Administrator', integer '1', text '867-5309', text 'superadmin@flo.ods', text 'texasfloods', text 'floods_super_admin');
alter sequence floods.user_id_seq restart with 2;
select floods.register_user(text 'Community', text 'Admin', text 'Community Administrator', integer '1', text '867-5309', text 'admin@community.floods', text 'texasfloods', text 'floods_community_admin');
alter sequence floods.user_id_seq restart with 3;
select floods.register_user(text 'Community', text 'Editor', text 'Community Editor', integer '1', text '867-5309', text 'editor@community.floods', text 'texasfloods', text 'floods_community_editor');
alter sequence floods.user_id_seq restart with 4;
select floods.register_user(text 'Other Community', text 'Admin', text 'Community Administrator', integer '2', text '867-5309', text 'admin@othercommunity.floods', text 'texasfloods', text 'floods_community_admin');
alter sequence floods.user_id_seq restart with 5;
select floods.register_user(text 'Community', text 'Editor Too', text 'Community Editor Too', integer '1', text '867-5309', text 'editortoo@community.floods', text 'texasfloods', text 'floods_community_editor');
alter sequence floods.user_id_seq restart with 6;
select floods.register_user(text 'Inactive', text 'User', text 'Retired', integer '1', text '867-5309', text 'inactive@flo.ods', text 'texasfloods', text 'floods_community_editor');


-- Add crossings
insert into floods.crossing (id, name, human_address, description) values
  (1, 'park', 'at the park', 'Crossing at the park'),
  (2, 'school', 'at the school', 'Crossing at the school'),
  (3, 'library', 'at the library', 'Crossing at the library'),
  (4, 'capitol', 'at the capitol', 'Crossing at the capitol'),
  (5, 'city hall', 'at city hall', 'Crossing at city hall'),
  (6, 'coffee shop', 'at the coffee shop', 'Crossing at the coffee shop'),
  (7, 'other community', 'in the other community', 'Crossing in the other community'),
  (8, 'other community 2', 'another in the other community', 'Another crossing in the other community');
alter sequence floods.crossing_id_seq restart with 9;

-- Add crossings to communities
insert into floods.community_crossing (id, community_id, crossing_id) values
  (1, 1, 1),
  (2, 1, 2),
  (3, 1, 3),
  (4, 1, 4),
  (5, 1, 5),
  (6, 1, 6),
  (7, 2, 7),
  (8, 2, 8);
alter sequence floods.community_crossing_id_seq restart with 9;

-- Add statuses
insert into floods.status (id, name) values
  (1, 'Open'),
  (2, 'Closed'),
  (3, 'Caution'),
  (4, 'Long-Term Closure');
alter sequence floods.status_id_seq restart with 5;

-- Add status reasons
insert into floods.status_reason (id, status_id, name) values
  (1, 2, 'Flooded'),
  (2, 4, 'Bridge Broken');
alter sequence floods.status_reason_id_seq restart with 3;

-- Add status durations
insert into floods.status_duration (id, status_id, name, timespan) values
  (1, 2, 'A Minute', interval '1 minute'),
  (2, 4, 'A Week', interval '1 week');
alter sequence floods.status_duration_id_seq restart with 3;

-- Add status associations
insert into floods.status_association (id, status_id, detail, rule) values
  (1, 1, 'reason', 'disabled'),
  (2, 1, 'duration', 'disabled'),
  (3, 2, 'reason', 'required'),
  (4, 2, 'duration', 'disabled'),
  (5, 3, 'reason', 'disabled'),
  (6, 3, 'duration', 'disabled'),
  (7, 4, 'reason', 'required'),
  (8, 4, 'duration', 'required');
alter sequence floods.status_association_id_seq restart with 9;


-- Add status updates
insert into floods.status_update (id, status_id, creator_id, crossing_id, notes, created_at) values
  (1, 1, 1, 1, 'notes', '2017-05-03T09:27:57Z'),
  (2, 2, 1, 1, 'notes', '2017-05-04T09:27:57Z'),
  (3, 1, 1, 2, 'notes', '2017-05-06T09:27:57Z'),
  (4, 1, 1, 3, 'notes', '2017-05-08T09:27:57Z'),
  (5, 1, 1, 5, 'notes', '2017-05-11T09:27:57Z'),
  (6, 2, 1, 2, 'notes', '2017-05-09T09:27:57Z'),
  (7, 1, 1, 1, 'notes', '2017-05-09T09:27:57Z'),
  (8, 2, 1, 3, 'notes', '2017-05-12T09:27:57Z'),
  (9, 1, 1, 4, 'notes', '2017-05-14T09:27:57Z'),
  (10, 2, 1, 1, 'notes', '2017-05-12T09:27:57Z'),
  (11, 2, 1, 5, 'notes', '2017-05-17T09:27:57Z'),
  (12, 1, 1, 6, 'notes', '2017-05-19T09:27:57Z'),
  (13, 1, 1, 5, 'notes', '2017-05-19T09:27:57Z'),
  (14, 1, 1, 5, 'notes', '2017-05-20T09:27:57Z'),
  (15, 1, 1, 4, 'notes', '2017-05-20T09:27:57Z'),
  (16, 1, 1, 3, 'notes', '2017-05-20T09:27:57Z'),
  (17, 1, 1, 1, 'notes', '2017-05-19T09:27:57Z'),
  (18, 1, 1, 4, 'notes', '2017-05-23T09:27:57Z'),
  (19, 2, 1, 5, 'notes', '2017-05-25T09:27:57Z'),
  (20, 2, 1, 3, 'notes', '2017-05-24T09:27:57Z'),
  (21, 1, 1, 2, 'notes', '2017-05-24T09:27:57Z'),
  (22, 1, 1, 5, 'notes', '2017-05-28T09:27:57Z'),
  (23, 2, 1, 1, 'notes', '2017-05-25T09:27:57Z'),
  (24, 2, 1, 6, 'notes', '2017-05-31T09:27:57Z'),
  (25, 1, 1, 1, 'notes', '2017-05-27T09:27:57Z'),
  (26, 2, 1, 1, 'notes', '2017-05-28T09:27:57Z'),
  (27, 2, 1, 2, 'notes', '2017-05-30T09:27:57Z'),
  (28, 1, 1, 3, 'notes', '2017-06-01T09:27:57Z'),
  (29, 2, 1, 5, 'notes', '2017-06-04T09:27:57Z'),
  (30, 1, 1, 2, 'notes', '2017-06-02T09:27:57Z'),
  (31, 1, 4, 7, 'notes', '2017-06-02T09:27:57Z');
alter sequence floods.status_update_id_seq restart with 32;

commit;
