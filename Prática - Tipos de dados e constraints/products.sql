CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" TEXT NOT NULL,
    "primary_image_url" TEXT NOT NULL,
    "category_id" INTEGER NOT NULL REFERENCES "categories"("id"),
    "stock" INTEGER NOT NULL
);