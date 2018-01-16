CREATE TABLE IF NOT EXISTS `item` (
	`itemId` smallint(6) NOT NULL AUTO_INCREMENT,
	`itemName` varchar(50) NOT NULL,
	`itemDesc` text NOT NULL,
	`itemGameId` varchar(50) DEFAULT 'Unspecified' 				COMMENT 'Actual ID in the game code.',
	`itemMenu` varchar(30) DEFAULT 'Unspecified'				COMMENT 'Menu category the item remains in.',
	`itemMadeWith` varchar(30) DEFAULT 'Unspecified' 			COMMENT 'What type of device is used to craft the item.',
	`itemPCapacity` smallint(6) DEFAULT NULL 					COMMENT 'Electricity item can store.',
	`itemPPM` smallint(6) DEFAULT NULL 							COMMENT 'Power generated per minute.',
	`itemPConsumption` smallint(6) DEFAULT NULL 				COMMENT 'Power consumed per minute.',  
	`itemHullIntegrity` tinyint(4) DEFAULT NULL 				COMMENT 'Hull integrity added to bases with this item.',
	`itemEnergy` smallint(6) DEFAULT NULL 						COMMENT 'Power item will convert to in the bioreactor.',
	`itemBuildTime` tinyint(4) DEFAULT NULL 					COMMENT 'Time it takes to craft item.',
	`itemSize` tinyint(4) DEFAULT NULL 							COMMENT 'Inventory space item uses.',
	`itemIsCraftable` tinyint(1) NOT NULL 						COMMENT 'Item can be crafted.',
	`itemIsRaw` tinyint(1) NOT NULL 							COMMENT 'Item is raw.',
	`itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 	COMMENT 'Last time dastabase line was changed.',
	PRIMARY KEY (`itemId`),
	UNIQUE KEY `itemId` (`itemId`)
);

CREATE TABLE recipe(
	recipeId smallint NOT NULL AUTO_INCREMENT,
	itemId smallint NOT NULL,
	recipeUpdated timestamp DEFAULT CURRENT_TIMESTAMP,
	UNIQUE (recipeId),
	PRIMARY KEY (recipeId),
	FOREIGN KEY (itemId) REFERENCES item(itemId)
);

/*Basic Materials */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Bleach',
		'NaCIO. Sodium hypochlorite bleach. Sanitizing applications.',
		'bleach',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Enameled Glass',
		'Glass, hardened using a natural substrate.',
		'enameledglass',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);


INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Fiber Mesh',
		'Strong natural fiber. Comfy',
		'fibermesh',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);


INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Glass',
		'SiO4. Pure fused quartz glass.',
		'glass',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);


INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Lubricant',
		'Naturally-derived, oil-based lubrican. Industrial applications.',
		'lubricant',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		100,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);


INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Plasteel Ingot',
		'Ultra-strong synthetic construction material.',
		'plasteelingot',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Silicone Rubber',
		'Synthetic, silicone-based rubber.',
		'silicone',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Titanium Ingot',
		'Ti. Condensed titanium bar.',
		'titaniumingot',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		5,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Titanium',
		'Ti. Basic building material.',
		'titanium',
		'Basic Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		1	/*raw*/
	);

/* Advanced Materials */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Aerogel',
		'Light, Porous, dried gel. High heat insulation.',
		'aerogel',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Benzene',
		'C6H6. Oil and solvent applications.',
		'benzene',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Hydrochloric Acid',
		'HCI. Powerful acidic compound. Employ due care.',
		'hydrochloricacid',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
	
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Polyaniline',
		'High conductance polymer.',
		'polyaniline',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		4,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
	
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Synthetic Fibers',
		'High-strength synthetic fibers.',
		'aramidfibers',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		4,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/* Base Pieces */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Synthetic Fibers',
		'High-strength synthetic fibers.',
		'aramidfibers',
		'Advanced Materials',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		4,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
