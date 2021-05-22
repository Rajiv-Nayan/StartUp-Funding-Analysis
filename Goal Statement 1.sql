SELECT top(5) Investors_Name,SUM(Amount_in_USD) AS Total_Amount
FROM dbo.startup_funding
WHERE City_Location NOT IN (Select * from [dbo].[City_locations])
GROUP BY Investors_Name having Investors_Name not in ('NULL')
ORDER BY Total_Amount DESC
  
