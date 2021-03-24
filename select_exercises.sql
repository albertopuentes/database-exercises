# Exercise 2
use albums_db;

# Exercise 3
from albums;
# (a) 31 rows

select distinct artist
from albums;
# (b) 23 distinct artist names
# (c) id is primary key

select max(release_date)
from albums;
select min(release_date)
from albums;
# (d) earliest album release = 1967, most recent = 2011

# Exercise 4
describe albums;

select name
from albums
where artist = 'Pink Floyd';
# (a) The Dark Side of the Moon and The Wall

select release_date
from albums
where name = "Sgt. Pepper's Lonely Hearts Club Band";
# (b) = 1967

select genre
from albums
where name = 'Nevermind';
# (c) = Grunge, Alternative rock

select name
from albums
where release_date between 1990 and 2000;

# (d) The Bodyguard
# Jagged Little Pill
# Come On Over
# Falling into You
# Let's Talk About Love
# Dangerous
# The Immaculate Collection
# Titanic: Music from the Motion Picture
# Metallica
# Nevermind
# Supernatural

select sales, name
from albums
where sales < 20;

# (e) 14.4	Grease: The Original Soundtrack from the Motion Picture
# 19.3	Bad
# 13.1	Sgt. Pepper's Lonely Hearts Club Band
# 17.9	Dirty Dancing
# 19.3	Let's Talk About Love
# 16.3	Dangerous
# 19.4	The Immaculate Collection
# 14.4	Abbey Road
# 19.6	Born in the U.S.A.
# 17.7	Brothers in Arms
# 18.1	Titanic: Music from the Motion Picture
# 16.7	Nevermind
# 17.6	The Wall


select name
from albums
where genre = 'Rock';

# (d) Sgt. Pepper's Lonely Hearts Club Band
# 1
# Abbey Road
# Born in the U.S.A.
# Supernatural
# Don't include "Hard Rock" or "Progressive Rock" b/d unique identifiers

