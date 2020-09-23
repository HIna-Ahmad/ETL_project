create table stats(
	player varchar not null,
	Pos varchar not null,
	Age int,
	Tm varchar, 
	ast int,
	stl int,
	blk int,
	pts int,
	fg int,
	fga int,
	primary key (player)
);