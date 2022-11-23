Mi MADAGASZKÁR fővárosa? SELECT `fovaros`
FROM `orszagok`
WHERE `orszag`= 'MADAGASZKÁR'

Melyik ország fővárosa OUAGADOUGOU?  SELECT `orszag`
FROM `orszagok`
WHERE `fovaros`= 'OUAGADOUGOU'

Melyik ország autójele a TT?
SELECT `orszag`
FROM `orszagok` WHERE `autojel`='TT'

Melyik ország pénzének jele az SGD? SELECT `orszag`
FROM `orszagok` WHERE `penzjel`='SGD'

Melyik ország nemzetközi telefon-hívószáma a 61? SELECT `orszag`
FROM `orszagok` WHERE `telefon`=61

Mekkora területű Monaco?
SELECT `terulet`
FROM `orszagok` WHERE `orszag`='MONACO'

Hányan laknak Máltán?
SELECT `nepesseg`
FROM `orszagok` WHERE `orszag`='MALTA'

Mennyi Japán népsűrűsége?
SELECT (`nepesseg`/`terulet`)AS 'nÉPSŰRŰSÉG'
FROM `orszagok` WHERE `orszag`='JAPAN'
Hány lakosa van a Földnek?
SELECT SUM(`nepesseg`)
FROM `orszagok`

Mennyi az országok területe összesen?
SELECT SUM(`terulet`)
FROM `orszagok`
Mennyi az országok átlagos népessége?
SELECT AVG(`nepesseg`) FROM orszagok

Mennyi az országok átlagos területe?
SELECT AVG(`terulet`) FROM orszagok
Mennyi a Föld népsűrűsége?
SELECT SUM(`nepesseg`)/ SUM(`terulet`) FROM orszagok

Hány 1.000.000 km2-nél nagyobb területű ország van?
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE `terulet`>1000000

Hány 100 km2-nél kisebb területű ország van?
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE `terulet`<100

Hány 20.000 főnél kevesebb lakosú ország van?
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE `nepesseg`<20000

Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE `nepesseg`<20000 or `terulet`<100

Hány ország területe 50.000 és 150.000 km2 közötti? 
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE 50000>`terulet`<150000

Hány ország lakossága 8 és 12 millió közötti?
SELECT COUNT(`orszag`)
FROM `orszagok` WHERE 8000>`nepesseg`<12000

Mely fővárosok népesebbek 20 millió főnél?
SELECT `fovaros`
FROM `orszagok` WHERE `nep_fovaros`>20000

Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
SELECT `orszag`
FROM `orszagok` WHERE (`nepesseg`*1000/`terulet`)>500

Hány ország államformája köztársaság?
SELECT COUNT(`orszag`) FROM `orszagok` WHERE `allamforma`='köztársaság'

Mely országok pénzneme a kelet-karib dollár?
SELECT `orszag` FROM `orszagok` WHERE `penznem`='kelet-karib dollár'
