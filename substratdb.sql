CREATE TABLE IF NOT EXISTS `item` (
	`itemId` smallint(6) NOT NULL AUTO_INCREMENT,
	`itemName` varchar(50) NOT NULL,
	`itemDesc` text NOT NULL,
	`itemGameId` varchar(50) DEFAULT 'Unspecified' 				COMMENT 'Actual ID in the game code.',
	`itemMenu` varchar(30) DEFAULT 'Unspecified'				COMMENT 'Menu category the item remains in.',
	`itemMadeWith` varchar(30) DEFAULT 'Unspecified' 			COMMENT 'What type of device is used to craft the item.',
	`itemPCapacity` smallint(6) DEFAULT NULL 					COMMENT 'Electricity item can store.',
	`itemPPM` smallint(4) DEFAULT NULL 							COMMENT 'Power generated per minute.',
	`itemPConsumption` smallint(4) DEFAULT NULL 				COMMENT 'Power consumed per minute.',  
	`itemHullIntegrity` decimal(3,2) DEFAULT NULL 				COMMENT 'Hull integrity added to bases with this item.',
	`itemEnergy` smallint(6) DEFAULT NULL 						COMMENT 'Power that the item will convert to in the bioreactor.',
	`itemFood` smallint(3) DEFAULT NULL							COMMENT 'Food value if eaten.'
	`itemWater` smallint(3) DEFAULT NULL						COMMENT 'Water value if drank.'
	`itemBuildTime` tinyint(4) DEFAULT NULL 					COMMENT 'Time it takes to craft item.',
	`itemSize` tinyint(4) DEFAULT NULL 							COMMENT 'Inventory space item uses.',
	`itemIsCraftable` tinyint(1) NOT NULL 						COMMENT 'Item can be crafted.',
	`itemIsRaw` tinyint(1) NOT NULL 							COMMENT 'Item is raw.',
	`itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 	COMMENT 'Last time dastabase line was changed.',
	PRIMARY KEY (`itemId`),
	UNIQUE KEY `itemId` (`itemId`)
);

CREATE TABLE IF NOT EXISTS recipe(
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

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		23,	/* Food Nutrition */
		2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		18,	/* Food Nutrition */
		5,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Eyeye',
		'Small, edible prey fish.',
		'eyeye',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		325,	/*BioReactor Energy*/
		18,	/* Food Nutrition */
		10,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		44,	/* Food Nutrition */
		4,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cooked Spadefish',
		'Small, edible prey fish.',
		'reginald',
		'Cooked Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		575,	/*BioReactor Energy*/
		23,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		21,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		32,	/* Food Nutrition */
		5,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		30,	/* Food Nutrition */
		2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		21,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		16,	/* Food Nutrition */
		4,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		23,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		23,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		20,	/* Food Nutrition */
		3,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
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
		18,	/* Food Nutrition */
		9,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/*Cured Food*/

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Hoopfish',
		'small, edible prey fish.',
		'hoopfish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		23,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Garryfish',
		'Floral flavor, but very little of it.',
		'garryfish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		325,	/*BioReactor Energy*/
		18,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Eyeye',
		'Floral flavor, but very little of it.',
		'eyeye',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		325,	/*BioReactor Energy*/
		18,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Reginald',
		'Pungent and smokey. Extremely filling.',
		'reginald',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		2200,	/*BioReactor Energy*/
		44,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Spadefish',
		'Small, edible prey fish.',
		'spadefish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		575,	/*BioReactor Energy*/
		23,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Boomerang',
		'Good eating around teh fins.',
		'boomerang',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		525,	/*BioReactor Energy*/
		21,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Peeper',
		'Protein-rich eyeballs. Highly nutritious.',
		'peeper',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		750,	/*BioReactor Energy*/
		32,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Oculus',
		'Small, edible prey fish.',
		'oculus',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		750,	/*BioReactor Energy*/
		30,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Holefish',
		'Gelatinous flesh.',
		'holefish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		105,	/*BioReactor Energy*/
		21,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Bladderfish',
		'Spongy. Gristly. Low calorie count. Thankfully odorless.',
		'bladderfish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		400,	/*BioReactor Energy*/
		16,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Spinefish',
		'Never eat the antennae.',
		'spinefish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		575,	/*BioReactor Energy*/
		23,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Hoverfish',
		'Small, edible prey fish.',
		'hoverfish',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		23,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Magmarang',
		'Small, edible prey fish.',
		'lavaboomerang',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		115,	/*BioReactor Energy*/
		21,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cured Red Eyeye',
		'Small, edible prey fish.',
		'lavaeyeye',
		'Cured Food',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		500,	/*BioReactor Energy*/
		18,	/* Food Nutrition */
		-2,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Cyclops Ignored blueprints */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops',
		'Vast industrial-use submarine.',
		'cyclops',
		'Cyclops',
		'Mobile Veicle Bay',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/* Cyclops Upgrades */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Decoy Tube Upgrade',
		'Increases the capacity of the cyclops decoy loading tube.',
		'cyclopsdecoymodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Depth Module MK1',
		'Increases safe dirving depth. Does not stack.',
		'cyclopshullmodule1',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Engine Efficiency Module',
		'Recycles heat by-product to increase engine efficiency',
		'powerupgrademodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Fire Suppression System',
		'Installs a fire suppression system on the Cyclops.',
		'cyclopsfiresuppressionmodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Shield Generator',
		'Creates a temporary barrier around the sub, rendering it invulnerable for a brief time.',
		'cyclopsshieldmodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Sonar Upgrade',
		'Scans the terrain outside the Cyclops.',
		'cyclopssonarmodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Cyclops Thermal Reactor Module',
		'Transfers environmental heat energy into electrical power.',
		'cyclopsthermalreactormodule',
		'Cyclops Upgrades',
		'Cyclops Upgrade Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/* Electronics */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Advanced Wiring Kit',
		'CPU used in advanced construction.',
		'advancedwiringkit',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity */
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Battery',
		'Mobile power source.',
		'battery',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity. Does not add power to bases.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Computer Chip',
		'Multi-purpose CPU.',
		'computerchip',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Copper Wire',
		'Copper atoms fabricated into basic electrical wiring.',
		'copperwire',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Power Cell',
		'High-capacity mobile power source.',
		'powercell',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		1,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Reactor Rod',
		'Used to power nuclear reactors.',
		'reactorrod',
		'Electronics',
		'Fabricator',
		2500,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Depleted Reactor Rod',
		'Used to power nuclear reactors.',
		'depletedreactorrod',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		0,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Wiring Kit',
		'Insulated silver wire. Essential electronic component.',
		'wiringkit',
		'Electronics',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Equipment */
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Compass',
		'Displays compass heading on the HUD.',
		'compass',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		0,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Fins',
		'Translate vertical limb movements underwater into forward thrust. Enhence swim speed by approximately 15%.',
		'fins',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Fire Extinguisher',
		'Extinguishes fires.',
		'fireextinguisher',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'First Aid Kit',
		'Treated bandages. Apply to staunch blood-flow and sanitize wounds.',
		'firstaidkit',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Floating Air Pump',
		'Floating device that pumps air into pipes. Acts as a starting point for a pipe chain.',
		'pipesurfacefloater',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Orange Tablet',
		'This device hums slightly, and displays an orange-lit symbol resembling an "n".',
		'precursorkey_orange',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Pipe',
		'A chain of pipes can be used to pump air to far away places. Start with a pump.',
		'pipe',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Purple Tablet',
		'This carbon-based device is lighter than it looks, and features a symbol which resembles a "U", lit up in purple. Despite the onboard power still functioning, algae growth on the exterior indicates it was abandoned hundreds, perhaps thousands of years ago. While the technology is far beyond federation levels, and there is no obvious way to interface with it, it should nonetheless be possible to fabricate a precise physical copy of the device, if necessary.',
		'precursorkey_purple',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Radiation Suit',
		'Lead-lined suit providing insulation from radiation.',
		'radiationsuit',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		6,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Rebreather',
		'Conserves oxygen when diving deeper. Absorbs and recycles CO2 into breathable air.',
		'rebreather',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Reinforced Dive Suit',
		'Heavy synthetic fiber dive suit providing 50% physical protection and enhanced survival in extreme temperatures.',
		'reinforceddivesuit',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		6,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Standard O2 Tank',
		'O2 mix. Compressed breathable air.',
		'tank',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		6,	/*Build Time*/
		6,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Standard O2 Tank',
		'O2 mix. Compressed breathable air.',
		'tank',
		'Equipment',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		6,	/*Build Time*/
		6,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Exterior Lights */
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Flightlight',
		'Industrial lighting designed for all environments.',
		'techlight',
		'Exterior Lighting',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		60,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Spotlight',
		'Fixed lighting solution.',
		'spotlight',
		'Exterior Lighting',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		60,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Exterior Modules */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Power Transmitter',
		'Extends the range of a power source.',
		'powertransmitter',
		'Exterior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Solar Panel',
		'Powers habitat oxygen generation and other modules. Converts available sunlight into low power electrical energy.',
		'solarpanel',
		'Exterior Modules',
		'Habitat Builder',
		125,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Thermal Plant',
		'Converts heat to energy at medium efficiency.',
		'thermalplant',
		'Exterior Modules',
		'Habitat Builder',
		250,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Exterior Other */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Base-attached Air Pump',
		'Pumps oxygen from a powered habitat to an attached pipe network.',
		'basepipeconnector',
		'Exterior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Exterior Growbed',
		'Artificial plant bed, suitable for use on land or underwater.',
		'farmingtray',
		'Exterior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Interior Installations */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Ladder',
		'Connects two floors.',
		'',
		'Interior Installations',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Bulkhead',
		'Provides structural support and prevents flooding (+3HP).',
		'basebulkhead',
		'Interior Installations',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		3,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Vehicle Upgrade Console',
		'Build in the moonpool to upgrade docked vehicles',
		'baseupgradeconsole',
		'Interior Installations',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Vehicle Upgrade Console',
		'Turns seawater into water and salt.',
		'basefiltrationmachine',
		'Interior Installations',
		'Habitat Builder',
		0,	/* Power Capacity. -2350 energy to produce per unit */
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

/* Interior Modules */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Biasc Plant Pot',
		'Titanium pot containing synthetic soil.',
		'planterpot',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Battery Charger',
		'Can charge multiple batteries simultaneously.',
		'planterpot',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Chic Plant Pot',
		'Upmarket pot containing syntehtic soil.',
		'planterpot3',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Composite Plant Pot',
		'Designer pot containing synthetic soil.',
		'planterpot2',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Fabricator',
		'Basic survival fabricator. Atomically rearranges raw resources into useful objects.',
		'fabricator',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Indoor Growbed',
		'Artificial plant bed, suitable for interior use only.',
		'planterbox',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Aquarium',
		'Self-sustaining aquatic habitat.',
		'',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Locker',
		'Large free-standing storage.',
		'locker',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		-48,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Medical Kit Fabricator',
		'Fabricates a medical kit every 30 minutes.',
		'',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Modification Station',
		'Advanced fabricator for modification of survival equipment.',
		'workbench',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Plant Shelf',
		'Wall-mounted plant pot.',
		'plantershelf',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Power Cell Charger',
		'Can charge multiple power cells simulatneously.',
		'powercellcharger',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Radio',
		'Receive short-range communications.',
		'radio',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Wall Locker',
		'Small wall-mounted storage solution.',
		'smalllocker',
		'Interior Modules',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		-30,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);

	/* Interior Rooms */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Alien Containment',
		'Provides optimal conditions for flora and fauna. Add a hatch to enter.',
		'basewaterpark',
		'Interior Rooms',
		'Habitat Builder',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Bioreactor',
		'Composts organic matter into electrical energy.',
		'basebioreactor',
		'Interior Rooms',
		'Habitat Builder',
		500,	/* Power Capacity.*/
		25,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Nuclear Reactor',
		'Processes nuclear reactor rods for huge power supply.',
		'basenuclearreactor',
		'Interior Rooms',
		'Habitat Builder',
		2500,	/* Power Capacity.*/
		250,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
/* Machines */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Beacon',
		'Navigation aid. Maintains and broadcasts its position. Configurable name.',
		'beacon',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		4,	/*Build Time*/
		1,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Creature Decoy',
		'Attracts creatures to its location. Can be deployed by hand or by a submarine. Cannot be reclaimed once deployed.',
		'cyclopsdecoy',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		2,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Grav Trap',
		'Uses artificial gravity to attract light objects and small creatures.',
		'gravsphere',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		4,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Mobile Vehicle Bay',
		'Fabricates vehicles from raw materials.',
		'constructor',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		10,	/*Build Time*/
		9,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Prawn Suit',
		'Epic mech suit designed for navigating challenging environments on foot.',
		'exosuitfragment',
		'Machines',
		'Mobile Vehicle Bay',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Seaglide',
		'Converts torque into thrust underwater via propeller.',
		'seaglide',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		5,	/*Build Time*/
		6,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Seamoth',
		'One-person vehicle.',
		'seamoth',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		3,	/*Build Time*/
		0,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Waterproof Locker',
		'4x4 storage that maintains position in the water.',
		'smallstorage',
		'Machines',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		4,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);
	
/* Miscellaneous */

INSERT INTO item ( itemName, itemDesc, itemGameId, itemMenu, itemMadeWith,itemPCapacity, itemPPM, itemPConsumption, itemHullIntegrity, itemEnergy, itemFood, itemWater itemBuildTime,itemSize, itemIsCraftable, itemIsRaw )
VALUES	(
		'Waterproof Locker',
		'4x4 storage that maintains position in the water.',
		'smallstorage',
		'Miscellaneous',
		'Fabricator',
		0,	/* Power Capacity.*/
		0,	/* Power Per Minute is variable */
		0,	/* Power Consumption Per Minute */
		0,	/*hull integrity*/
		0,	/*BioReactor Energy*/
		0,	/* Food Nutrition */
		0,	/* Water Nutrition */
		4,	/*Build Time*/
		4,	/*size*/
		1,	/*craftable*/
		0	/*raw*/
	);