CREATE TABLE IF NOT EXISTS items (
    id SERIAL PRIMARY KEY,
    text VARCHAR(255)
);

INSERT INTO items (text) VALUES ('First item');
INSERT INTO items (text) VALUES ('Second item');
