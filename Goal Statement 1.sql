 Declare @tablevariable Table(location varchar(5000))
   insert into @tablevariable values('Bangalore/Palo Alto'),('Bangalore/San Mateo'),('Bangalore/USA'),
                                    ('Bangalore/SFO'),('Bangalore/Bangkok'),('Boston'),('Bumsville'),
									('California'),('Chennai/Singapore'),('Dallas/Hyderabad'),
									('Delhi& Cambridge'),('Gurgaon/SFO'),('Hyderabad/USA'),
									('India/Singapore'),('India/US'),('London'),('Menlo Park'),
									('Mumbai/Global'),('Mumbai/NY'),('Mumbai/UK'),('Nairobi'),
									('New Delhi/California'),('New Delhi/US'),('New Delhi/Houston'),
									('Pune/Dubai'),('New York'),('New York, Bengaluru'),('New York/India'),
									('Noida/Singapore'),('Palo Alto'),('Pune/Dubai'),('Pune/Singapore'),
									('Pune/US'),('Pune/Seattle'),('San Francisco'),('San Jose'),('Santa Monica'),
									('Seattle/Banglore'),('SFO/Banglore'),('Singapore'),('Tulangan'),('USA'),('US')


 SELECT TOP(5) Investors_Name,SUM(Amount_in_USD) AS Total_Amount
 FROM dbo.startup_funding
 WHERE City_Location NOT IN (Select * from @tablevariable)
 GROUP BY Investors_Name having Investors_Name not in ('NULL')
 ORDER BY Total_Amount DESC
  
