create table superheroes_info(
shid int,
shname varchar(255),
sh_original_name varchar(255),
power varchar(255),
phonenumber bigint,
address varchar(255),
city varchar(255),
hq varchar(255));

alter table superheroes_info add teamname varchar(255);

create table superheroes_info(
shid int,
shname varchar(255),
sh_original_name varchar(255),
power varchar(255),
phonenumber bigint,
address varchar(255),
city varchar(255),
hq varchar(255));
truncate table superheroes_info;

ALTER TABLE superheroes_info RENAME TO info_sh;



------------------------------------------------------------------------------------------


create table superheroes_info(
shid int,
shname varchar(255) notnull,
sh_original_name varchar(255),
power varchar(255),
phonenumber bigint,
address varchar(255) notnull,
city varchar(255),
hq varchar(255));

create table superheroes_info(
shid int,
shname varchar(255),
sh_original_name varchar(255),
power varchar(255),
phonenumber bigint,
address varchar(255),
city varchar(255),
hq varchar(255));







select * from public.info_sh;
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('2', 'ironman', 'tonystark', 'billionare', '8121586800', 'malibu point', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('1', 'captain america', 'steverogers', 'superhuman', '8885558820', 'brooklyn', 'newyork', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('3', 'thor', 'thorodinson', 'god', '9951104674', 'asgard', 'universal', 'avengers facility', 'teamash');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('4', 'hulk', 'brucebanner', 'gamma monster', '8125483789', 'vietnam', 'soviet union', 'avengers facility', 'teamgreen');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('5', 'blackwidow', 'natasha romanoff', 'assassin', '8985420276', 'chelsea', 'russia', 'avengers facility', 'teamblack');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('6', 'hawkeye', 'clint', 'archery', '9640166804', 'california', 'united states', 'avengers facility', 'teamviolet');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('7', 'falcon', 'sam', 'wings', '9550239786', 'brooklyn', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('8', 'wintersoldier', 'bucky', 'superhuman', '9000948345', 'brooklyn', 'newyork', 'avengers facility', 'teamblack');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('9', 'vision', 'vision', 'android robot', '1234567892', 'newyork', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('10', 'scarlett witch', 'wanda maximoff', 'chaoes magic', '9876543212', 'newyork', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('11', 'quick silver', 'pietro', 'fastest man', '2223334445', 'newyork', 'newyork', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('12', 'doctorstrange', 'stephen', 'wizard', '3334445556', 'ohio', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('13', 'soccersupreme', 'wong', 'wizard', '6667778889', 'ohio', 'newyork', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('14', 'blackpanther', 'tchalla', 'billionare', '9998887776', 'wakanda', 'africa', 'avengers facility', 'teamblack');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('15', 'captain marvel', 'caroldanvers', 'superhuman', '4445556667', 'universal', 'universal', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('16', 'spiderman', 'peterparker', 'spidey abilities', '5556667778', 'queens', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('17', 'ironpatriot', 'james rhodes', 'army general', '2224446668', 'malibu point', 'newyork', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('18', 'antman', 'scottlang', 'shriking ability', '1113335557', 'vauxhen', 'newyork', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('19', 'wasp', 'hopevandyne', 'shrinking ability', '2223335558', 'vauxhen', 'newyork', 'avengers facility', 'teamyellow');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('20', 'starlord', 'peterquill', 'element gun', '1010101111', 'universe', 'universal', 'avengers facility', 'teamred');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('21', 'gamora', 'gamora', 'assasin', '1112121213', 'universe', 'universal', 'avengers facility', 'teamgreen');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('22', 'nebula', 'nebula', 'robot assassin', '1313141414', 'universe', 'universal', 'avengers facility', 'teamblue');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('23', 'rocket', 'rocket', 'gun skills', '1515151616', 'universe', 'universal', 'avengers facility', 'teambrown');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('24', 'groot', 'groot', 'i am groot', '1617171718', 'universe', 'universal', 'avengers facility', 'teambrown');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('25', 'destroyer', 'drax', 'hunter', '1818191919', 'universe', 'universal', 'avengers facility', 'teambrown');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('26', 'mantis', 'mantis', 'telepathy', '2020202121', 'universe', 'universal', 'avengers facility', 'teamgreen');
INSERT INTO public.info_sh(shid, shname, sh_original_name, power, phonenumber, address, city, hq, teamname) VALUES ('27', 'adamwarlock', 'adamwarlock', 'superhuman', '2122222223', 'universal', 'universe', 'avengers facility', 'teamyellow');