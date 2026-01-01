CREATE TABLE IF NOT EXISTS accounts (
    account_id INTEGER PRIMARY KEY,
    institution_id INTEGER NOT NULL REFERENCES institutions (institution_id),
    account_name TEXT NOT NULL,
    account_type TEXT NOT NULL,  -- bank | savings | credit_card
    external_ref TEXT,
    created_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    last_updated_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);
