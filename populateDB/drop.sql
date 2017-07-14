-- This script will delete everything created in `schema.sql`. This script is
-- also idempotent, you can run it as many times as you would like. Nothing
-- will be dropped if the schemas and roles do not exist.

begin;

drop schema if exists floods, floods_private cascade;
drop role if exists floods_postgraphql, floods_anonymous, floods_community_editor, floods_community_admin, floods_super_admin;

commit;
