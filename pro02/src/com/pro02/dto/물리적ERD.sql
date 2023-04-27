CREATE TABLE `Untitled` (
	`id`	varchar2(20)	NOT NULL,
	`pw`	varchar2(150)	NOT NULL,
	`name`	varchar2(20)	NULL,
	`tel`	varchar2(20)	NULL,
	`addr`	varchar2(150)	NULL,
	`email`	varchar2(80)	NULL
);

CREATE TABLE `Untitled2` (
	`tcode`	varchar2(20)	NOT NULL,
	`tname`	varchar2(200)	NOT NULL,
	`tsize`	varchar2(150)	NULL,
	`tbuy`	varchar2(100)	NULL,
	`tdate`	varchar2(300)	NULL,
	`mount`	varchar2(20)	NOT NULL
);

CREATE TABLE `Untitled3` (
	`jnumber`	varchar2(20)	NOT NULL,
	`id`	varchar2(50)	NOT NULL,
	`tcode`	varchar2(100)	NULL,
	`mount`	varchar2(20)	NULL,
	`buy`	varchar2(30)	NULL,
	`parw`	varchar2(20)	NULL,
	`tel`	varchar2(40)	NULL,
	`par`	varchar2(20)	NULL,
	`address`	varchar2(100)	NULL,
	`pcode`	varchar2(70)	NULL,
	`tcode2`	varchar2(20)	NOT NULL,
	`id2`	varchar2(20)	NOT NULL
);

CREATE TABLE `Untitled4` (
	`number`	varchar2(30)	NOT NULL,
	`id`	varchar2(20)	NULL,
	`tcode`	varchar2(50)	NULL,
	`mount`	varchar2(20)	NULL,
	`id2`	varchar2(20)	NOT NULL,
	`tcode2`	varchar2(20)	NOT NULL
);

CREATE TABLE `Untitled5` (
	`cnember`	varchar2(20)	NOT NULL,
	`id`	varchar2(20)	NULL,
	`jnember`	varchar2(20)	NULL,
	`jbuy`	varchar2(30)	NULL,
	`jbuynember`	varchar2(100)	NULL,
	`jgold`	int	NULL,
	`jw`	date	NULL	COMMENT 'default',
	`id2`	varchar2(20)	NOT NULL,
	`jnumber`	varchar2(20)	NOT NULL
);

CREATE TABLE `Untitled6` (
	`gnember`	varchar2(20)	NOT NULL,
	`id`	varchar2(20)	NULL,
	`jnember`	varchar2(20)	NULL,
	`gw`	varchar2(70)	NULL,
	`greview`	varchar2(500)	NOT NULL,
	`gponit`	int	NULL	COMMENT 'default5',
	`id2`	varchar2(20)	NOT NULL,
	`jnumber`	varchar2(20)	NOT NULL
);

ALTER TABLE `Untitled` ADD CONSTRAINT `PK_UNTITLED` PRIMARY KEY (
	`id`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `PK_UNTITLED2` PRIMARY KEY (
	`tcode`
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `PK_UNTITLED3` PRIMARY KEY (
	`jnumber`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `PK_UNTITLED4` PRIMARY KEY (
	`number`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `PK_UNTITLED5` PRIMARY KEY (
	`cnember`
);

ALTER TABLE `Untitled6` ADD CONSTRAINT `PK_UNTITLED6` PRIMARY KEY (
	`gnember`
);

