CREATE TABLE "customers" (
    "id" SERIAL PRIMARY KEY,
    "fullName" TEXT NOT NULL,
    "cpf" TEXT NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL
);

CREATE TABLE "customersAddresses" (
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "street" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "complement" TEXT NOT NULL,
    "postalCode" TEXT NOT NULL,
    "cityId" INTEGER NOT NULL REFERENCES "cities"("id")
);

CREATE TABLE "cities" (
	"id" SERIAL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"stateId" INTEGER NOT NULL REFERENCES "states"("id")
);

CREATE TABLE "states" (
	"id" SERIAL PRIMARY KEY,
	"name" TEXT NOT NULL
);

CREATE TABLE "customerPhones" (
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "number" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL
);

CREATE TABLE "bankAccount" (
    "id" SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "accountNumber" TEXT NOT NULL UNIQUE,
    "agency" TEXT NOT NULL,
    "openDate" TIMESTAMP DEFAULT NOW(),
    "closeDate"
);

CREATE TABLE "transactions" (
    "id" SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "amount" INTEGER NOT NULL,
    "time" TIME DEFAULT NOW(),
    "description" TEXT NOT NULL,
    "cancelled" BOOLEAN NOT NULL
);

CREATE TABLE "creditCards" (
    "id" SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    "name" TEXT NOT NULL,
    "number" TEXT NOT NULL UNIQUE,
    "securityCode" TEXT NOT NULL,
    "expirationMonth" TEXT NOT NULL,
    "expiratioYear" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "limit" INTEGER NOT NULL
);
