-- vim: set filetype=pgsql:

-- Comments

/* This is a comment
  /* actually, a nested comment */
  select -- this must be not a keyword
*/
select -- this must be a keyword

// this is not a comment
# neither is this

/* XXX to-do marker */
-- XXX to-do marker */


-- data types
smallint    int2
integer     int     int4
bigint      int8
decimal     decimal (10)    decimal(10,20)
numeric     numeric (10)    numeric(10,20)
real
double precision
smallserial serial2
serial      serial4
bigserial   serial8
float       float
    (10)      float(10)

money

character varying   character  varying (1)
varchar             varchar (1)
character           character(10)
char                char	(10)
name

bytea

timestamp
timestamp without time zone
timestamp with time zone
timestamp (10)
timestamp (10) without time zone
timestamp (10) with time zone
timestamptz
timestamptz(10)
date
time
time without time zone
time with time zone
time (10)
time
    (10) without time zone
time (10) with time zone
interval
extract(month from whatever)
interval (10)
-- TODO: why is this all a keyword???
extract(month from whatever)
interval year
extract(month from whatever)
interval month
interval day
interval hour
interval minute
interval second
interval second (10)
interval year to month
interval day to hour
interval day to minute
interval day to second
interval day to second (10)
interval hour to minute
interval hour to second
interval hour to second (10)
interval minute to second
interval minute to second (10)

boolean bool

enum

point line lseg box path polygon circle
cidr inet macaddr

bit;            bit(10)
bit varying;    bit varying (1)
varbit;         varbit (10)

tsvector tsquery

uuid

xml

json jsonb

foo%rowtype
bar%type

-- TODO: should be a type
any

-- false positive types
int5
serial7
precision double
xdecimal (10)
xdecimal(10,20)
zone time with timestamp
timestamp with time zonex
xfloat
varying
interval year to hour
interval minute (10)
interval second to second (10)

rowtype
type

-- constants
null
true
false

-- operators
any(x),  any (x)
all(x),  all (x)
array[10,20],    array [10]

-- false positive constant
not null


-- Copy support
copy django_content_type (id, app_label, model) from stdin
with (format csv);
1,admin,logentry
2,auth,permission
3,auth,group
4,auth,user
5,contenttypes,contenttype
6,sessions,session
\.

\i some psql table command

-- Identifiers
a_table_or_field
"a table or field too"
U&"\0441\043B\043E\043D"

-- String literals
'a string'
U&'d\0061t\+000061'

-- Numbers
42
3.5
4.
.001
5e2
1.925e-3

-- Variables
tg_op old new

-- Statements
begin;
begin work;
begin transaction;
commit;
commit prepared;
rollback work;
rollback prepared;
abort transaction;
begin isolation level repeatable read not deferrable;
begin isolation level read committed read write;
start transaction not deferrable

rollback to savepoint;
release savepoint;

close;
close all;

declare adsf binary insensitive no scroll cursor without hold for asdf;

delete from dsf
delete from only dsf where current of blah
discard all
discard plans;
discard sequences;
discard temp;
discard temporary;

alter aggregate adf rename to  foo
alter aggregate adf owner to  foo
alter aggregate adf set schema  foo
alter database adf reset all  foo
alter database adf set  tablespace  foo
alter default privileges for role asdf
alter default privileges for user asdf
alter default privileges in schema asdf
alter table foo drop constraint bar
alter table foo rename constraint bar
alter table foo validate constraint bar
alter event trigger foo disable
alter event trigger foo enable
alter event trigger foo enable replica
alter event trigger foo enable always
alter extension foo add materialized view foo;
alter extension foo drop view foo;
alter foreign data wrapper foo handler foo no validator;
enable trigger
disable trigger
enable replica trigger
enable always trigger
set default
set data type
drop default
set not null
drop not null
reset
options
add
set
drop

true and false
true or false
blah in (10, 20)
blah not in (10, 20)
exists (select 10)
-- TODO: bah shoud not be keyword
any (select 10 from bah)
some (select 10 from bah)

called on null input
returns null on null input
strict immutable stable volatile
not leakproof
leakproof
external security invoker
security definer
cost
rows
from current
alter group x add user
alter
    group x drop user
set storage plain
set statistics
cluster on
set without cluster
for search
for order by
alter system set
alter
    system reset
alter system reset all
disable rule
enable rule
enable always trigger
alter constraint
deferrable
initially deferred
initially immediate
set with oids
set without oids
on delete
on update
inherit foo
no inherit
of sdf
not of
replica identity
default
using index
full
nothing
primary key
alter text search configuration
add attribute
drop attribute
cluster
cluster verbose asdf using
comment on foreign table asdf is $$wat$$

create aggregate
create cast (foo as bar)
select cast (42 as text);
without function with function with inout
as assignment as implicit
create conversion
create default conversion
create event trigger execute procedure
create extension with schema x version y from z
create or replace function returns xcf language plpgsql
create or replace trusted procedural language x handler x validator x inline x
create trusted procedural language x handler x validator x inline x
create unique index foo
create unique index concurrently foo
create rule asdf as on
    insert to wherever do instead nothing
create or replace rule as on update to foo where bah do also nothing
do instead whatever
create temp sequence
create unlogged table if not exists
on commit preserve rows
on commit delete rows
on commit drop
match full match partial match simple
including constraints
excluding
    comments
using index tablespace

create trigger
create constraint trigger
before insert
after update or delete
instead of truncate
for row
for statement
for each row
for each statement
execute procedure

create or replace temp view
create temporary recursive view
with cascaded check option

drop aggregate if exists asd cascade;
drop cast if
    exists afff restrict;
drop collation
drop conversion
drop database
drop domain
drop event trigger
drop extension
drop foreign data wrapper
drop foreign table
drop function if exists
drop group
drop index
drop
    index concurrently
drop language
drop procedural language
drop materialized view
drop operator
drop operator class
drop operator family
drop owned by
drop role
drop rule
drop schema
drop sequence
drop table
drop tablespace
drop text search  configuration
drop text  search dictionary
drop  text search parser
drop text search template
drop trigger
drop type
drop user
drop user mapping
drop view
execute
explain
explain verbose
explain analyze
explain adf (analyze true, verbose, costs 1, format json);
fetch last from asdf
fetch backward all in asdf
fetch absolute 10 in asdf
grant delete, all privileges on table foo with grant option
grant insert, update, execute, all on all tables in schema blah
grant insert, update, execute, all on all functions in schema blah
grant foo to bar
with foo ( )
with admin option
with recursive
insert into foo values
insert into foo default values returning *;
values
lock table only asdf in row exclusive mode nowait
lock table only asdf in exclusive mode nowait
move last from asdf
move backward all in asdf
move absolute 10 in asdf
listen
notify
unlisten
prepare
prepare transaction
deallocate
deallocate prepare all
reassign owned by
refresh materialized view foo with data
refresh materialized view concurrently bar with no data
reindex index foo force
release savepoint foo
release bar
reset all
revoke insert, execute, select, all privileges on fuuuu
revoke grant option for delete on database adsf from public cascade
security label for foo
security label on foo
truncate whatever restart identity
truncate whatever continue identity

select
select all
select distinct
select distinct on
from what
where ach
group by
having
order by
offset 1 row
offset 2 rows
fetch first 10 rows only
for update of x
for no key update of x
for share of x
for key share of x
lateral
rows from
with ordinality
union all
intersect distinct
join
inner join
left join
left outer join
right join
right outer join
full join
full outer join
cross join
unbounded preceding
10 following
current row
window
partition by
asc
desc
nulls first
nulls last
limit
offset
range between x and y
rows between x and y
into unlogged table asdf
into temp foo

set
set session
set local
set constraints
set constraints all
set session role none
reset role
set session session authorization default
reset session authorization
set role
deferred
immediate
set transaction
set transaction snapshot
set session characteristics as transaction
show
show all
update only
vacuum full freeze verbose
vacuum full verbose analyze wat

-- False statements
beginz
work
transaction
repeatable
read
isolation level whatever
binary insensitive no scroll curor without hold for
discard;
discard foo;
i exists
if exist
aggregate
collation
conversion
database
domain
event trigger
extension
foreign data wrapper
foreign table
function
index
concurrently
index concurrently
procedural language
role
rule
sequence
tablespace
text search configuration
text search template
trigger
type
user mapping
view
format asdf
fetch
on all function in schema
with admin
admin option
insert
exclusive mode
reindex
by
order
inner
left
right
partition
temp
temporary
snapshot
characteristics
restart
continue
replica
always
data type
security
external
definer
invoker
comment
before mah
instead of bah


-- Complete examples

CREATE OR REPLACE FUNCTION audit."foobar.account_fn"()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
begin
    if tg_op <> 'DELETE' then
        insert into audit."foobar.account" values (default, tg_op, new.*);
        return null;
    else
        insert into audit."foobar.account" values (default, tg_op, old.*);
        return null;
    end if;
end
$function$;

CREATE TRIGGER "foobar.account_audit_trg"
AFTER INSERT OR UPDATE OR UPDATE ON foobar.account
FOR EACH ROW EXECUTE PROCEDURE audit."foobar.account_fn"();
