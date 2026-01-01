CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INTEGER PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts (account_id),
    -- account_id denormalized for index simplicity
    statement_id INTEGER NOT NULL REFERENCES statements (statement_id),
    source_line_number INTEGER NOT NULL,
    source_row_hash TEXT NOT NULL,
    txn_date DATE NOT NULL,
    description TEXT,
    amount_normalized NUMERIC NOT NULL,
    currency TEXT DEFAULT 'GBP',
    raw_amount TEXT,
    raw_currency TEXT,
    category_raw TEXT,
    subcategory_raw TEXT,
    note_raw TEXT,
    cheque_number TEXT,
    created_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    last_updated_date TEXT NOT NULL DEFAULT (CURRENT_TIMESTAMP)
);
