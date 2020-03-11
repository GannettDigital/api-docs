## CVT Events

### Resource Overview


| Method | URI Format |
|---|---|
| GET | /client_reports/cvt_events/[gmaid]?[query_params]|

### API Name: CVT Events
### Usage
Use GET to retrieve web event activity for all CVT events for a given gmaid.

The data returned will include web events from each campaign with web event name, web event url, and web event interval data of CVT counts, qualified and non-qualified web events, and high web events.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`|No|Restricts results to all campaigns with given master campaign id|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` or `ended`|


To specify a date range:

   - Specify start_date and end_date.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1' \
```

> Retrieve data for a specific range of dates limited to ended campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&campaign_status[]=ended' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1&interval_size=calendar_week&campaign_status[]=running' \
```

> Response Description

```javascript
{
  "report_type": "cvt_events",                    // Report Type
  "report_date": "2020-02-26",                    // Date Report was Run
  "earliest_date_available": "2018-03-03",        // Earliest Date Data is Available
  "start_date": "2019-10-01",                     // Start Date of Report
  "end_date": "2020-02-25",                       // End Date of Report
  "time_zone": "America/Los_Angeles",             // Time Zone of Report    
  "interval_size": "calendar_week",               // Interval Size Report is Broken Into
  "currency": "USD",                              // Currency of Report
  "report_data": {
    "campaigns": [
      {
        "name": "Ad_Campaign_1",                  // Campaign name
        "global_master_campaign_id": "USA_1",     // Identifier for campaign
        "start_date": "2016-07-10",               // Start date for campaign
        "end_date": "2016-10-24",                 // End date for campaign
        "type": "Search",                         // Type of campaign
        "status": "running",                      // Current campaign status
        "organization": "reachlocal",             // Organization
        "web_events": [
          {
            "web_event_name": "*Book my appointment button clicked",  // Name of web event
            "web_event_url": "https://www.bookanappointment.com",     // Web event url
            "cvt_type": 1,                                            // CVT Type
            "entry_type":8,                                           // Entry Type
            "intervals": [                                            // Array of intervals
              {
                "date": "2019-09-30",             // Date of interval
                "cvt_count": 4,                   // Count of CVT events in interval                  
                "qualified_web_events": 4,        // Number of qualified web events     
                "non_qualified_web_events": 0,    // Number of non-qualified web events
                "high_web_events": 0              // Number of high web events
              },
              {
                "date": "2019-10-07",
                "cvt_count": 4,
                "qualified_web_events": 4,
                "non_qualified_web_events": 0,
                "high_web_events": 0
              },
              {
                "date": "2019-10-14",
                "cvt_count": 1,
                "qualified_web_events": 1,
                "non_qualified_web_events": 0,
                "high_web_events": 0
              }
            ]
          },
          {
            "web_event_name": "*Request a callback form submitted",
            "web_event_url": "https://www.bookanappointment.com/callme",
            "cvt_type": 2,
            "entry_type": 8,
            "intervals": [
              {
                "date": "2019-09-30",
                "cvt_count": 1,
                "qualified_web_events": 1,
                "non_qualified_web_events": 0,
                "high_web_events": 1
              },
              {
                "date": "2019-10-07",
                "cvt_count": 1,
                "qualified_web_events": 1,
                "non_qualified_web_events": 0,
                "high_web_events": 1
              },
              {
                "date": "2019-10-14",
                "cvt_count": 1,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "high_web_events": 1
              }
            ]
          },
        ]
      }
    ]
  },
  "global_master_advertiser_id": "USA_123456",  // Global Master Advertiser ID
  "location": "https://api.reachlocalservices.com/client_reports/cvt_events/USA_190076?campaign_status%5B%5D=running&end_date=2020-02-25&global_master_campaign_id%5B%5D=USA_2772377&interval_size=calendar_week&start_date=2019-10-01"
}
```
