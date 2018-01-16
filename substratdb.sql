CREATE TABLE item(
	itemId smallint NOT NULL AUTO_INCREMENT,
	itemName varchar(50) NOT NULL,
	itemDesc TEXT NOT NULL,
	itemGameId varchar(50) DEFAULT 'Unspecified',
	itemMenu varchar(30) DEFAULT 'Unspecified',
	itemMadeWith varchar(30) DEFAULT 'Unspecified',
	itemPCapacity smallint,
	itemPPM smallint,
	itemPConsumption smallint,
	itemHullIntegrity tinyint,
	itemEnergy smallint,
	itemBuildTime tinyint,
	itemSize tinyint,
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