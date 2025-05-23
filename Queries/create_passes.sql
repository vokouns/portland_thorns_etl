CREATE TABLE passing (
	Player NVARCHAR(50),
	Jersey_number INT,
	Nation NVARCHAR(50),
	Pos NVARCHAR(50),
	Age NVARCHAR(50),
	Min INT,
	total_Cmp INT,
	total_Att INT,
	total_Cmp_pct DECIMAL (4,1),
	total_TotDist INT,
	total_PrgDist INT,
	short_Cmp INT,
	short_Att INT,
	short_Cmp_pct DECIMAL(4,1),
	medium_Cmp INT,
	medium_Att INT,
	medium_Cmp_pct DECIMAL(4,1),
	long_Cmp INT,
	long_Att INT,
	long_Cmp_pct DECIMAL(4,1),
	Ast INT,
	xAG DECIMAL(4,1),
	xA DECIMAL(4,1),
	KP INT,
	final_third INT,
	PPA INT,
	CrsPA INT,
	PrgP INT,
	game_id NVARCHAR(50),
	player_id NVARCHAR(50),
CONSTRAINT PK_passing PRIMARY KEY (player_id),
CONSTRAINT FK_passing FOREIGN KEY (game_id) REFERENCES match_metadata (game_id)
)