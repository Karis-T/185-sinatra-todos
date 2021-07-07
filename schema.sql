-- a list can havev many todos
-- a todo can only belong to 1 list
-- 1 to many relationship

CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed boolean NOT NULL DEFAULT false,
  list_id integer NOT NULL REFERENCES lists (id) ON DELETE CASCADE
);