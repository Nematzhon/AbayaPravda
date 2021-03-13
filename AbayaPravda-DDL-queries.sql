CREATE TABLE "players" (
	"ID"	INTEGER,
	"Name"	TEXT,
	"FullName"	TEXT,
	"Age"	INTEGER,
	"Height"	INTEGER,
	"Weight"	INTEGER,
	"PhotoUrl"	TEXT,
	"Nationality"	TEXT,
	"Overall"	INTEGER,
	"Potential"	INTEGER,
	"Growth"	INTEGER,
	"TotalStats"	INTEGER,
	"BaseStats"	INTEGER,
	"Positions"	TEXT,
	"BestPosition"	TEXT,
	"Club"	TEXT,
	"ValueEUR"	INTEGER,
	"WageEUR"	INTEGER,
	"ReleaseClause"	INTEGER,
	"ClubPosition"	TEXT,
	"ContractUntil"	INTEGER,
	"ClubNumber"	INTEGER,
	"ClubJoined"	INTEGER,
	"OnLoad"	TEXT,
	"NationalTeam"	TEXT,
	"NationalPosition"	TEXT,
	"NationalNumber"	TEXT,
	"PreferredFoot"	TEXT,
	"IntReputation"	INTEGER,
	"WeakFoot"	INTEGER,
	"SkillMoves"	INTEGER,
	"AttackingWorkRate"	TEXT,
	"DefensiveWorkRate"	TEXT,
	"PaceTotal"	INTEGER,
	"ShootingTotal"	INTEGER,
	"PassingTotal"	INTEGER,
	"DribblingTotal"	INTEGER,
	"DefendingTotal"	INTEGER,
	"PhysicalityTotal"	INTEGER,
	"Crossing"	INTEGER,
	"Finishing"	INTEGER,
	"HeadingAccuracy"	INTEGER,
	"ShortPassing"	INTEGER,
	"Volleys"	INTEGER,
	"Dribbling"	INTEGER,
	"Curve"	INTEGER,
	"FKAccuracy"	INTEGER,
	"LongPassing"	INTEGER,
	"BallControl"	INTEGER,
	"Acceleration"	INTEGER,
	"SprintSpeed"	INTEGER,
	"Agility"	INTEGER,
	"Reactions"	INTEGER,
	"Balance"	INTEGER,
	"ShotPower"	INTEGER,
	"Jumping"	INTEGER,
	"Stamina"	INTEGER,
	"Strength"	INTEGER,
	"LongShots"	INTEGER,
	"Aggression"	INTEGER,
	"Interceptions"	INTEGER,
	"Positioning"	INTEGER,
	"Vision"	INTEGER,
	"Penalties"	INTEGER,
	"Composure"	INTEGER,
	"Marking"	INTEGER,
	"StandingTackle"	INTEGER,
	"SlidingTackle"	INTEGER,
	"GKDiving"	INTEGER,
	"GKHandling"	INTEGER,
	"GKKicking"	INTEGER,
	"GKPositioning"	INTEGER,
	"GKReflexes"	INTEGER,
	"STRating"	INTEGER,
	"LWRating"	INTEGER,
	"LFRating"	INTEGER,
	"CFRating"	INTEGER,
	"RFRating"	INTEGER,
	"RWRating"	INTEGER,
	"CAMRating"	INTEGER,
	"LMRating"	INTEGER,
	"CMRating"	INTEGER,
	"RMRating"	INTEGER,
	"LWBRating"	INTEGER,
	"CDMRating"	INTEGER,
	"RWBRating"	INTEGER,
	"LBRating"	INTEGER,
	"CBRating"	INTEGER,
	"RBRating"	INTEGER,
	"GKRating"	INTEGER
)

CREATE TABLE "teams" (
	"ID"	INTEGER,
	"Name"	TEXT,
	"League"	TEXT,
	"LeagueId"	INTEGER,
	"Overall"	INTEGER,
	"Attack"	INTEGER,
	"Midfield"	INTEGER,
	"Defence"	INTEGER,
	"TransferBudget"	INTEGER,
	"DomesticPrestige"	INTEGER,
	"IntPrestige"	INTEGER,
	"Players"	INTEGER,
	"StartingAverageAge"	REAL,
	"AllTeamAverageAge"	REAL
)
