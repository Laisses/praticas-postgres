CREATE TABLE "orders" (
    "id" SERIAL PRIMARY KEY,
    "user_id" INTEGER NOT NULL REFERENCES "users"("id"),
    "addres" TEXT NOT NULL,
    "status_id" INTEGER NOT NULL REFERENCES "order_status"("id"),
    "date" TIMESTAMP NOT NULL DEFAULT NOW()
);