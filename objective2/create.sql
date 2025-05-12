CREATE TABLE `Stranding_Data` (
  `stranding_id` integer PRIMARY KEY,
  `data_year` integer,
  `year_submitted` integer,
  `large_area` varchar(255),
  `country` varchar(255),
  `Local_area` varchar(255),
  `latitude` float,
  `longitude` float,
  `species` int,
  `gender` int,
  `status` int,
  `outcomes` int,
  `additional_info` text,
  `contact` varchar(255),
  `reference` varchar(255)
);

CREATE TABLE `Species` (
  `species_id` integer PRIMARY KEY,
  `scientific_name` varchar(255),
  `common_name` varchar(255),
  `local_taxonomy` varchar(255)
);

CREATE TABLE `gender` (
  `gender_id` integer PRIMARY KEY,
  `gender_type` varchar(255)
);

CREATE TABLE `status` (
  `status_id` integer PRIMARY KEY,
  `status_type` varchar(255)
);

CREATE TABLE `outcome` (
  `outcome_id` integer PRIMARY KEY,
  `outcome_type` varchar(255)
);

CREATE TABLE `Bycatch_data` (
  `bycatch_id` integer PRIMARY KEY,
  `data_year` integer,
  `species` int,
  `large_area` varchar(255),
  `latitude` float,
  `longitude` float,
  `fishing_gear` int,
  `Targeted_fishery_species` varchar(255),
  `observation_method` int,
  `gender` int,
  `status` int
);

CREATE TABLE `fishing_gear` (
  `gear_id` integer,
  `gear_type` varchar(255)
);

CREATE TABLE `observation_method` (
  `method_id` int,
  `method_name` varchar(255)
);

CREATE TABLE `VesselStrike_data` (
  `strike_id` integer PRIMARY KEY,
  `case_id` integer,
  `incident_date` datetime,
  `location_description` text,
  `Latitude` float,
  `longitude` float,
  `species` int,
  `confidence_spp` varchar(255),
  `gender` int,
  `AgeClass` varchar(255),
  `whale_behavior_pre` text,
  `whale_behavior_post` text,
  `whale_injury` text,
  `vessel_id` int,
  `collision_evid` text,
  `whale_survival_status` varchar(255)
);

CREATE TABLE `vessels` (
  `vessel_id` int,
  `vessel_name` varchar(255),
  `vessel_length` float,
  `vessel_speed` float,
  `vessel_owner` varchar(255),
  `vessel_type` varchar(255),
  `vessel_company` varchar(255),
  `vessel_imo` varchar(255),
  `vessel_propulsion_type` varchar(255),
  `vessel_draft` float,
  `vessel_tonnage` float
);

ALTER TABLE `Stranding_Data` ADD CONSTRAINT `strang_spec` FOREIGN KEY (`species`) REFERENCES `Species` (`species_id`);

ALTER TABLE `Stranding_Data` ADD CONSTRAINT `strange_gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `Stranding_Data` ADD CONSTRAINT `strange_status` FOREIGN KEY (`status`) REFERENCES `status` (`status_id`);

ALTER TABLE `Stranding_Data` ADD CONSTRAINT `strange_outcome` FOREIGN KEY (`outcomes`) REFERENCES `outcome` (`outcome_id`);

ALTER TABLE `Bycatch_data` ADD CONSTRAINT `byca_spec` FOREIGN KEY (`species`) REFERENCES `Species` (`species_id`);

ALTER TABLE `Bycatch_data` ADD CONSTRAINT `byca_fish` FOREIGN KEY (`fishing_gear`) REFERENCES `fishing_gear` (`gear_id`);

ALTER TABLE `Bycatch_data` ADD CONSTRAINT `byca_method` FOREIGN KEY (`observation_method`) REFERENCES `observation_method` (`method_id`);

ALTER TABLE `Bycatch_data` ADD CONSTRAINT `strange_gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `Bycatch_data` ADD CONSTRAINT `strange_status` FOREIGN KEY (`status`) REFERENCES `status` (`status_id`);

ALTER TABLE `VesselStrike_data` ADD CONSTRAINT `VesselStrike_data_spec` FOREIGN KEY (`species`) REFERENCES `Species` (`species_id`);

ALTER TABLE `VesselStrike_data` ADD CONSTRAINT `VesselStrike_data_gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`gender_id`);

ALTER TABLE `VesselStrike_data` ADD CONSTRAINT `VesselStrike_data_id` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`vessel_id`);
