-- vim: set filetype=pgsql:

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
float       float (10)      float(10)

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
time (10) without time zone
time (10) with time zone
interval
interval (10)
interval year
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
