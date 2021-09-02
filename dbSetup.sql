CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';


CREATE TABLE IF NOT EXISTS castles(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
  name VARCHAR(255) NOT NULL COMMENT 'Castle Name',
  gold int COMMENT 'Castle Gold Coins',
  population int COMMENT 'Castle Population',
  quests int COMMENT 'Quests given'
);

CREATE TABLE IF NOT EXISTS knights(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
  name VARCHAR(255) NOT NULL  COMMENT 'Name',
  gender VARCHAR(255) COMMENT 'Gender',
  age int COMMENT 'Years Of Service',
  yearsOfService int COMMENT '# of Years Served',
  castleId int NOT NULL,

  FOREIGN KEY (castleId)
    REFERENCES castles(id)
    ON DELETE CASCADE
);