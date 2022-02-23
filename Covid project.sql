----SELECT 
    *
FROM
    pearl.`covid vaccinations`
ORDER BY 3 , 4;----

--SELECT 
    *
FROM
    pearl.`Covid deaths`
ORDER BY 3 , 4;--

--select data we are using--

--SELECT 
    location, date, total_cases, new_cases, total_deaths
FROM
    pearl.`covid deaths`
ORDER BY 1 , 2;--

---Looking at Total cases Vs Total deaths--

--SELECT 
    location,
    date,
    total_cases,
    total_deaths,
    (total_deaths / total_cases) * 100 AS Deathpercentage
FROM
    pearl.`covid deaths`
ORDER BY 1 , 2--

--Looking at countries with highest infection rate compared--
SELECT 
    location,
    date,
    total_cases,
    total_deaths,
    (total_deaths / total_cases) * 100 AS Deathpercentage
FROM
    pearl.`covid deaths`

--Looking at total death by population-- 

--SELECT 
    location,
    population,
    total_cases,
    total_deaths,
    (total_deaths / population) * 100 AS Deathpercentage
FROM
    pearl.`covid deaths`;--
    
    -- showing countries with highest death count per population---
   
   --Select Location, Max(total_deaths) as TotalDeathscount 
   from pearl.`covid deaths`
   where location like '%A%'
   Group by location
   Order by TotalDeathsCount desc;---
   
   --New death percentage global--
  
 ------SELECT 
    date,
    SUM(new_cases) AS total_cases,
    SUM(new_deaths) AS total_deaths,
    SUM(new_cases / new_deaths) * 100 AS DeathPercentage
FROM
    pearl.`covid deaths`
GROUP BY date
ORDER BY 1 , 2----



--SELECT 
    *
FROM
    pearl.`covid deaths`
        JOIN
    pearl.`covid vaccinations` ON pearl.`covid deaths`.location = pearl.`covid vaccinations`.location
        AND pearl.`covid deaths`.date = pearl.`covid vaccinations`.date;----
        
        ---total population VS total vaccinations---
        
     ---SELECT 
    date,location,population_density
FROM
    pearl.`covid deaths`
        JOIN
    pearl.`covid vaccinations` ON pearl.`covid deaths`.location = pearl.`covid vaccinations`.location
        AND pearl.`covid deaths`.date = pearl.`covid vaccinations`.date;----
        
        
        
        
        
        
        


   
   
   
   
   
   
   
   
    

    
    
    
    
    





