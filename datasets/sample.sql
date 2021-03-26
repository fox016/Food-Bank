BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Drake''s Stuff','');
INSERT INTO "Account" VALUES(3,'WalMart','');
INSERT INTO "Account" VALUES(4,'Mr Bob''s Fish','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2025-03-07','Refrigerated','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-07-16','Refrigerated','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'','Non-refrigerated','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2028-04-08','Frozen','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-03-26T19:00:00.000+0000','Requested','4');
INSERT INTO "Delivery__c" VALUES(2,'2021-03-25T18:45:00.000+0000','Completed','3');
INSERT INTO "Delivery__c" VALUES(3,'2021-03-27T19:00:00.000+0000','Scheduled','2');
COMMIT;
