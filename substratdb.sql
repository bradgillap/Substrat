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
	`itemHullIntegrity` decimal(3,2) DEFAULT NULL 				COMMENT 'Hull integrity added to bases with this item.',
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

/* Base Pieces. These pieces have no game ID*/

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Foundation',
		'Reinforced habitat foundation.',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		2,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'I Compartment',
		'I-shaped compartment (-1HP).',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'I Glass Compartment',
		'Basic glass-walled compartment (-2)HP.',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-2,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'L Compartment',
		'L-shaped compartment (-1HP).',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'L Glass Compartment',
		'L-shaped glass compartment (-2HP).',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-2,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'T Compartment',
		'T-shaped compartment (-1HP).',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'X Compartment',
		'X-shaped compartment (-1HP).',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Vertical Connector',
		'Vertical base connector (-0.5HP)',
		'Base Pieces',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-0.5,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
	
/*Base Rooms*/

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Moonpool',
		'Vehicle docking bay (-5HP).',
		'basemoonpool',
		'Base Rooms',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-5,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Multipurpose Room',
		'Basic room (-1.25HP).',
		'baseroom',
		'Base Rooms',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1.25,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Observatory',
		'Compartment with 360 degree views and low structural integrity (-3HP).',
		'baseobservatory',
		'Base Rooms',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1.25,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Scanner Room',
		'Locate resources and wrecks within range.',
		'basemaproom',
		'Base Rooms',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/* Base Walls */

INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Reinforcement',
		'Increases Hull Integrity (+7HP).',
		'Base Walls',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		7,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Window',
		'Observatory window (-1HP).',
		'Base Rooms',
		'Habitat Builder',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		-1,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/*Cooked Food*/

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Hoopfish',
		'small, edible prey fish.',
		'hoopfish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Garryfish',
		'Floral flavor, but very little of it.',
		'garryfish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		325,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Reginald',
		'Pungent and smokey. Extremely filling.',
		'reginald',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		2200,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Boomerang',
		'Good eating around teh fins.',
		'boomerang',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		525,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Peeper',
		'Protein-rich eyeballs. Highly nutritious.',
		'peeper',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		750,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Oculus',
		'Small, edible prey fish.',
		'oculus',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		750,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Holefish',
		'Gelatinous flesh.',
		'holefish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		105,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Bladderfish',
		'Spongy. Gristly. Low calorie count. Thankfully odorless.',
		'bladderfish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		400,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Spinefish',
		'Never eat the antennae.',
		'spinefish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		575,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Hoverfish',
		'Small, edible prey fish.',
		'hoverfish',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Magmarang',
		'Small, edible prey fish.',
		'lavaboomerang',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Red Eyeye',
		'Small, edible prey fish.',
		'lavaeyeye',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		500,	/*BioReactor Energy*/
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
