-- Idempotent re-runs per statement
CREATE UNIQUE INDEX IF NOT EXISTS ux_transactions_idem
ON transactions (statement_id, source_row_hash);

-- Cheque number unique within account (when provided)
CREATE UNIQUE INDEX IF NOT EXISTS ux_account_cheque
ON transactions (account_id, cheque_number)
WHERE cheque_number IS NOT NULL;
