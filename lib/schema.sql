CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER,
  constraint fk_author foreign key (author_id) references authors(id),
  constraint fk_subgenre foreign key (subgenre_id) references subgenres(id)
);

CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER,
  constraint fk_series foreign key (series_id) references series(id)
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id INTEGER,
  series_id INTEGER,
  constraint fk_authors foreign key (author_id) references authors(id),
  constraint fk_series foreign key (series_id) references series(id)
);

CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  character_id INTEGER,
  book_id INTEGER,
  constraint fk_characters foreign key (character_id) references characters(id),
  constraint fk_books foreign key (book_id) references books(id)
);
