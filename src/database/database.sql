-- Primary database structure

CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR (30) NOT NULL,
    password TEXT NOT NULL,
    token TEXT NOT NULL,
    refresh_token_id BIGINT NOT NULL,
    updated_at date NOT NULL,
    created_at date NOT NULL
);

CREATE TABLE IF NOT EXISTS refresh_token (
    refresh_token_id serial primary key,
    token text not null
);