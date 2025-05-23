CREATE TABLE shots (
minute INT,
player NVARCHAR(50),
squad NVARCHAR(50),
xg DECIMAL (4, 2),
psxg DECIMAL (4, 2),
outcome  NVARCHAR(50),
distance INT,
body_part  NVARCHAR(50),
notes  NVARCHAR(50),
sca_1_player  NVARCHAR(50),
sca_1_event  NVARCHAR(50),
sca_2_player NVARCHAR(50),
sca_2_event NVARCHAR(50),
shot_id INT,
game_id NVARCHAR(50),
player_id NVARCHAR(50),
CONSTRAINT PK_shots PRIMARY KEY (shot_id),
CONSTRAINT FK_shots FOREIGN KEY (game_id) REFERENCES match_metadata (game_id)
)