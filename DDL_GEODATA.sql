
-- select * from geodata._countries limit 10;
-- select * from  geodata._regions limit 1;
-- select * from geodata._cities limit 10;
-- ---------------------------------------
-- SHOW CREATE TABLE geodata._countries;
-- SHOW COLUMNS FROM geodata._countries;
-- ---------------------------------------
-- РАБОТАЕМ НАД _Country
-- Переименуем поле и поменяем атрибуты
ALTER TABLE geodata._countries CHANGE `country_id` `id` int not null PRIMARY KEY auto_increment;
-- Добавим PK
-- ALTER TABLE geodata._countries add PRIMARY KEY (`id`);
-- Добвим поле
ALTER TABLE geodata._countries ADD title varchar(150) DEFAULT NULL after id;
-- добавим индекс 
CREATE INDEX title ON geodata._countries (title);
-- Удалим лишние колонки
ALTER TABLE geodata._countries drop column title_be;
ALTER TABLE geodata._countries drop column title_cz;	
ALTER TABLE geodata._countries drop column title_de;		
ALTER TABLE geodata._countries drop column title_en;	
ALTER TABLE geodata._countries drop column title_es;
ALTER TABLE geodata._countries drop column title_fr;		
ALTER TABLE geodata._countries drop column title_it;		
ALTER TABLE geodata._countries drop column title_ja;	
ALTER TABLE geodata._countries drop column title_lt;		
ALTER TABLE geodata._countries drop column title_lv;		
ALTER TABLE geodata._countries drop column title_pl;		
ALTER TABLE geodata._countries drop column title_pt;
ALTER TABLE geodata._countries drop column title_ru;	
ALTER TABLE geodata._countries drop column title_ua;	

-- ---------------------------------------
-- SHOW CREATE TABLE geodata._countries;
-- SHOW COLUMNS FROM geodata._countries;
-- ---------------------------------------
-- РАБОТАЕМ НАД _REGIONS
-- SHOW CREATE TABLE geodata._REGIONS;
-- SHOW COLUMNS FROM geodata._REGIONS;
 -- ---------------
 -- Переименуем поле и поменяем атрибуты
ALTER TABLE geodata._REGIONS  CHANGE `region_id` `id` int not null PRIMARY KEY auto_increment;
-- создадим внешний ключ
ALTER TABLE geodata._REGIONS 
ADD CONSTRAINT `country_id` 
FOREIGN KEY (`country_id`) 
REFERENCES `GEODATA`.`_Countries` (`id`) 
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- Добвим поле
ALTER TABLE geodata._REGIONS ADD title varchar(150) DEFAULT NULL after country_id;
-- создадим индекс
CREATE INDEX title ON geodata._REGIONS  (title);
-- Удалим лишние колонки
ALTER TABLE geodata._REGIONS  drop column title_be;
ALTER TABLE geodata._REGIONS  drop column title_cz;	
ALTER TABLE geodata._REGIONS  drop column title_de;		
ALTER TABLE geodata._REGIONS  drop column title_en;	
ALTER TABLE geodata._REGIONS  drop column title_es;
ALTER TABLE geodata._REGIONS  drop column title_fr;		
ALTER TABLE geodata._REGIONS  drop column title_it;		
ALTER TABLE geodata._REGIONS  drop column title_ja;	
ALTER TABLE geodata._REGIONS  drop column title_lt;		
ALTER TABLE geodata._REGIONS  drop column title_lv;		
ALTER TABLE geodata._REGIONS  drop column title_pl;		
ALTER TABLE geodata._REGIONS  drop column title_pt;
ALTER TABLE geodata._REGIONS  drop column title_ru;	
ALTER TABLE geodata._REGIONS  drop column title_ua;	
