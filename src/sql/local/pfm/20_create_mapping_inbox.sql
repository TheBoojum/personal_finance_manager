CREATE TABLE IF NOT EXISTS mapping_inbox (
    inbox_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts (account_id),
    statement_file TEXT NOT NULL,
    statement_date DATE NOT NULL,
    header_sample TEXT,
    column_count INTEGER,
    encoding TEXT,
    detected_signature TEXT,
    created_at TEXT NOT NULL,
    created_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    last_updated_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);
