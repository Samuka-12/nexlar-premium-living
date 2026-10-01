ALTER TABLE public.orders
  ADD COLUMN IF NOT EXISTS ironpay_transaction_hash text,
  ADD COLUMN IF NOT EXISTS ironpay_transaction_id text,
  ADD COLUMN IF NOT EXISTS ironpay_payment_status text,
  ADD COLUMN IF NOT EXISTS ironpay_status_reason text,
  ADD COLUMN IF NOT EXISTS pix_qr_code text,
  ADD COLUMN IF NOT EXISTS pix_copy_paste text,
  ADD COLUMN IF NOT EXISTS pix_expires_at timestamptz,
  ADD COLUMN IF NOT EXISTS paid_at timestamptz;

CREATE UNIQUE INDEX IF NOT EXISTS orders_ironpay_transaction_hash_idx
  ON public.orders (ironpay_transaction_hash)
  WHERE ironpay_transaction_hash IS NOT NULL;

CREATE INDEX IF NOT EXISTS orders_ironpay_payment_status_idx
  ON public.orders (ironpay_payment_status);

GRANT ALL ON public.orders TO service_role;
