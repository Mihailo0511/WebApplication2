
 create table Games
 (
 GameID int not null primary key,
 Game_Name nvarchar(100) not null,
 Game_genre nvarchar(100) not null,
 Release_year int not null,
 Game_score int
 )
 
  insert into Games values(1,'Assassins creed','stealth',2007,null)
  insert into Games values(2,'Halo','fps',2001,null)
  insert into Games values(3,'Bioshock','fps',2007,null)
  insert into Games values(4,'Prince of Persia','adventure',2008,null)
  insert into Games values(5,'Tomb raider','adventure',2013,null)
  insert into Games values(6,'Dishonored','stealth',2016,null)
  insert into Games values(7,'Ark survival evolved','survival',2017,null)
  insert into Games values(8,'GTA IV','action-adventure',2008,null)
  insert into Games values(9,'Dark souls','rpg',2011,null)
  insert into Games values(10,'Silent hill 3','psychological horror',2003,null)
  insert into Games values(11,'The last of us','horror-adventure',2013,null)
  insert into Games values(12,'Far cry 3','fps-survival',2012,null)
  insert into Games values(13,'Dead space','survival-horror',2008,null)
  insert into Games values(14,'Call of duty 4','fps',2007,null)
  insert into Games values(15,'Portal','puzzle',2007,null)
  insert into Games values(16,'Half life 2','fps',2004,null)
  insert into Games values(17,'The sims 4','lifestyle',2013,null)
  insert into Games values(18,'God of war','action-adventure',2018,null)
  insert into Games values(19,'Metal gear rising: revengeance','action-adventure',2013,null)
  insert into Games values(20,'Resident evil 4','survivale-horror',2005,null)