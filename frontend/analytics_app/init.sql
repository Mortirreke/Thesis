CREATE TABLE actions (id SERIAL PRIMARY KEY, data JSONB NOT NULL);

CREATE TABLE top10 (
  ID SERIAL PRIMARY KEY,
  userID VARCHAR NOT NULL,
  S0_top10 JSON NOT NULL,
  S1_top10 JSON NOT NULL,
  S0_PAK DECIMAL NOT NULL,
  S1_PAK DECIMAL NOT NULL,
  s0_SRC DECIMAL NOT NULL,
  s1_SRC DECIMAL NOT NULL,
  s0_MSE DECIMAL NOT NULL,
  s1_MSE DECIMAL NOT NULL
);