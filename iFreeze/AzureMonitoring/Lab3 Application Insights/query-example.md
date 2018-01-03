# This query calculates the 50th, 75th and 90th percentiles by city
```
//Define start time to query our data
let startDate = datetime(2017-01-01T12:22:00);
//Define end time to query our data
let endDate = datetime(2018-01-30T15:18:00);
//Start our request
requests 
//Define our time interval
| where timestamp between(startDate .. endDate) 
//Calculates the 50th, 75th, and 90th percentiles by city
| summarize percentiles(duration, 50, 75, 90) by client_City
//Render results
| render timechart
```
