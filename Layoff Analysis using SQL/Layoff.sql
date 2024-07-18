
-- DATA CLEANING

use World_Layoffs;

select * from layoffs;

-- creating a duplicate table for Data Cleaning.

CREATE TABLE layoffs_new 
LIKE layoffs;

SELECT * FROM layoffs_new; 

-- Inserting the data into duplicate data.alter

INSERT layoffs_new 
SELECT * FROM layoffs;

SELECT * FROM layoffs_new;


-- Data Cleaning Steps
-- 1. Remove duplicates 
-- 2. Standardize data and fix errors
-- 3. Handel null & blank values 
-- 4. remove any columns and rows that are not necessary



-- 1. Remove Duplicates

# First let's check for duplicates

with duplicate_cte as (
	SELECT *,
		ROW_NUMBER() OVER (
			PARTITION BY company, industry, location, total_laid_off, percentage_laid_off, `date`
            , stage, country, funds_raised
			) AS row_num
	FROM 
		layoffs_new
) 
select * 
from duplicate_cte
where row_num > 1;
    
    
    -- creating a temp table for deleting the duplicate data :
    
    CREATE TABLE `layoffs_new2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table layoffs_new2;
select * from layoffs_new2;

-- inserting the data into temp table

insert layoffs_new2
SELECT *, ROW_NUMBER() OVER (
			PARTITION BY company, industry, location, total_laid_off, percentage_laid_off, `date`
            , stage, country, funds_raised) AS row_num
	FROM 
		layoffs_new;  
        
select * from layoffs_new2;

delete 
from layoffs_new2 
where row_num > 1;
    
SET SQL_SAFE_UPDATES = 0;
  
-- 2. Standardise the data

-- there was unwanted space in company field that needs to be cleared. 
select distinct(trim(company)), company 
from layoffs_new2
order by 2;

-- Now we need to update the trimed field in place of the actual field.

update layoffs_new2
set company = trim(company);

select distinct(Industry)
from layoffs_new2
order by 1; 

-- I also noticed the Crypto has multiple different variations. We need to standardize that - lets set all to 'Crypto'

select * 
from layoffs_new2
where Industry like 'Crypto%';

update layoffs_new2
set Industry = 'Crypto'
where Industry like 'Crypto%';


-- We need to fix the data type of Date column as well 

select date 
from layoffs_new2;

select  `date`, str_to_date(`date`, '%M/%d/%Y')
from layoffs_new2;

update layoffs_new2
set `date` = str_to_date(`date`, '%M/%d/%Y');

alter table layoffs_new2 
modify column `date` date;

-- 4. remove any columns and rows we need to
select * 
from layoffs_new2
where total_laid_off IS NULL;


select * 
from layoffs_new2
where total_laid_off IS NULL and percentage_laid_off = '';

update layoffs_new2
set percentage_laid_off = NULL 
where  percentage_laid_off = '';


-- Delete useless data 

delete from layoffs_new2
where total_laid_off IS NULL and percentage_laid_off = '';

select * from layoffs_new2;

select count(*) from layoffs_new2;

-- Now we no longer need the Row Num col, so we remove that one 

alter table  layoffs_new2 
drop column row_num;

select * from layoffs_new2;


