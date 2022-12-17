CREATE TABLE "products_images" (
    "id" SERIAL PRIMARY KEY,
    "product_id" INTEGER NOT NULL REFERENCES "products"("id"),
    "image_url" TEXT NOT NULL
);
