CREATE TABLE IF NOT EXISTS statements (
    statement_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts (account_id),
    statement_date DATE NOT NULL,
    period_start DATE,
    period_end DATE,
    file_path TEXT NOT NULL,
    file_hash TEXT NOT NULL,
    loaded_at TEXT NOT NULL,
    loader_version TEXT NOT NULL,
    mapping_model_id TEXT NOT NULL,
    created_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    last_updated_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);
