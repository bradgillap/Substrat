CREATE TABLE item(
	itemId smallint NOT NULL AUTO_INCREMENT,
	itemName varchar(30) NOT NULL,
	itemDesc TEXT NOT NULL,
	itemType varchar(30) DEFAULT 'Unspecified',
	itemGameId varchar(30) DEFAULT 'Unspecified',
	itemMenu varchar(30) DEFAULT 'Unspecified',
	itemIsCraftable BOOLEAN NOT NULL,
	itemIsRaw BOOLEAN NOT NULL,
	itemUpdated timestamp DEFAULT CURRENT_TIMESTAMP,
	UNIQUE (itemId),
	PRIMARY KEY (itemId)
);

CREATE TABLE recipe(
	recipeId smallint NOT NULL AUTO_INCREMENT,
	itemId smallint NOT NULL,
	recipeUpdated timestamp DEFAULT CURRENT_TIMESTAMP,
	UNIQUE (recipeId),
	PRIMARY KEY (recipeId),
	FOREIGN KEY (itemId) REFERENCES item(itemId)
);

INSERT INTO item ( itemName, itemDesc, itemType, itemGameId, itemIsCraftable, itemIsRaw )
VALUES	('Titanium',
	'Titanium is a raw material that is heavily used in crafting. it is used to craft almost all Alterra technology, including Equipment, Tools, Vehicles and Seabase modules. It can be found in Limestone Outcrops, crafted from metal salvage, or obtained by using the Scanner to scan fragments for Blueprints that the player already has. Titanium can also be found as a large resource deposit.',
	'Basic Material',
	'titanium',
	 1,
	 1
	);

INSERT INTO item ( itemName, itemDesc, itemType, itemGameId, itemIsCraftable, itemIsRaw )
VALUES	('Titanium Ingot',
	'Condensed titanium bar.',
	'Basic Material',
	'titaniumingot',
	 1,
	 1
	);