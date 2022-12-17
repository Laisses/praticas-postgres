CREATE TABLE "products_sizes" (
    "id" SERIAL PRIMARY KEY,
    "product_id" INTEGER NOT NULL REFERENCES "products"("id"),
    "size_id" INTEGER NOT NULL REFERENCES "sizes"("id")
);