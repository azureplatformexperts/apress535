# Security Events from a specific VM 

```
//Define query scope
SecurityEvent
//Define timeframe
| where TimeGenerated > ago(7d)
//specify virtual machine or resource
| where Computer == "dbVM" 
//specify the columns to display results
| project  TimeGenerated, EventDetails=Activity, EventCode=substring(Activity, 0, 4)
```
