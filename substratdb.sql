CREATE TABLE item(
	itemId smallint NOT NULL AUTO_INCREMENT,
	itemName varchar(30) NOT NULL,
	itemDesc varchar(255) DEFAULT 'No description yet.',
	itemType varchar(30) DEFAULT 'Unspecified',
	itemGameId varchar(30) DEFAULT 'Unspecified',
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
VALUES	('Titanium', 'A hard metal resource','Raw Mateiral','titanium',1,1 );
