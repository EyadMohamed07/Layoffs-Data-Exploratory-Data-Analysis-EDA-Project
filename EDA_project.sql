select min(`date`) start_period , max(`date`) end_period
from layoffs_staging2 ;
-- -----------------------------------------

SELECT max(total_laid_off) , MAX(percentage_laid_off) 
FROM layoffs_staging2 ;

-- ------------------------------------------

SELECT * FROM layoffs_staging2 

WHERE total_laid_off = 12000 ;

-- -----------------------------------------

SELECT * FROM layoffs_staging2 

WHERE percentage_laid_off = 1 ORDER BY total_laid_off desc ;

-- ----------------------------------------- 

SELECT * FROM layoffs_staging2 

WHERE percentage_laid_off = 1 ORDER BY funds_raised_millions desc ;


-- -----------------------------------------

-- SUM OF LAID OF and funds FOR EVERY COMPANY 

SELECT COMPANY , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2  
group by company order by 3 DESC ;

-- -----------------------------------------

SELECT country , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2  
group by country order by 2 DESC ;

-- -----------------------------------------

-- SUM OF LAID OF and funds FOR EVERY industry 

SELECT industry , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2  
group by industry order by 2 DESC ;

-- -----------------------------------------
-- the most day lay_offs in united states
SELECT country , `date` , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2  where country = 'United States'  
group by country , `date` order by 3 DESC ;
-- -----------------------------------------
-- the most industry in USA
SELECT country , industry , sum(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2  where country = 'United States'  
group by country , industry order by 3 DESC ;
-- -----------------------------------------
-- the most day lay_offs 
SELECT  year(`date`) , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2   
group by  year(`date`) order by 2 DESC ;

-- -----------------------------------------
-- the most stage 
SELECT  stage  , SUM(total_laid_off) TOTAL_laid_offs , SUM(funds_raised_millions) total_funds
FROM layoffs_staging2   
group by  stage order by 2 DESC ;

-- -----------------------------------------

SELECT  company  , avg (percentage_laid_off) 
FROM layoffs_staging2   
group by  company order by 2 DESC ;

-- -----------------------------------------
-- rolling on the month 

with roll_month as
( select substring(`date`,1,7) as `month` , sum(total_laid_off) as t_laid
from layoffs_staging2 
-- where `month` is not null (error because column is not defined yet )
where substring(`date`,1,7)  is not null 
group by `month`
order by 1 
)
select `month` , t_laid , sum(t_laid) over(order by `month`) rolling_total

from roll_month ;

-- -----------------------------------------
-- top 4 countries in every year 


with company_roll (company , `date` , t_layoffs) as (

select company , year(`date`) , sum(total_laid_off)
from layoffs_staging2 
group by company , year(`date`)
order by 3 desc
) , 

rank_companies as (
select * , dense_rank() over(partition by `date` order by t_layoffs desc) as ranking

from company_roll where `date` is not null ) 

select * from rank_companies where ranking <= 4 ;
