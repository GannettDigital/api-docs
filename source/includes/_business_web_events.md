## Business Daily Metrics

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/business_web_events/[business_id]?[query_params]
```

#### Usage
Use GET to retrieve web event activity for all advertisers for a given business.

The data returned will include total web events for each interval, broken out by advertiser, campaign and CVT.

The business_id needs to include the region so that it is globally unique (USA_6338 or CAN_6338, not 6338)

If the timeframe between start date and end date is more than 13 months and interval is calendar_month or more than 120 days and interval is days, an error is returned

```
More than 120 days of data for daily interval or more than 13 months of data is not supported
```

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

Logic for Counts:

|CVT type|Value|Entry Type|CVT Count|qualified_web_events|non_qualified_web_events|high_web_events|
|---|---|---|---|---|---|---|
|1|1|7|yes|no|yes|no|
|1|1|8|yes|yes|no|no|
|2|2|8|yes|yes|no|yes|
|1|2|7|yes|no|yes|no|
|1|2|8|yes|yes|no|no|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_web_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01"
```
###### Retrieve data for a specific range of dates limited to ended and stopped campaigns
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_web_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01&campaign_status[]=ended,stopped"
```

###### Retrieve data for a specific range of dates grouped by calendar month
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_web_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01&interval_size=calendar_month"
```

#### Response Description
```javascript
{
  "report_type": "business_web_events",
  "report_date": "2020-02-27",
  "business_id": "USA_6338",
  "business_name": "Kiddie Academy INV",
  "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/business_web_events/USA_6338?campaign_status%5B%5D=running&end_date=2019-08-01&global_master_campaign_id%5B%5D=USA_465183&interval_size=day&start_date=2019-07-01",
  "start_date": "2019-07-01",
  "end_date": "2019-08-01",
  "report_data": {
    "advertisers": [
      {
        "global_master_advertiser_id": "USA_78724",
        "name": "KA - Albany",
        "aid": 78724,
        "campaigns": [
          {
            "global_master_campaign_id": "USA_465183",
            "name": "KA - Albany",
            "offer_id": 1,
            "organization": "reachlocal",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "web_events": [
              {
                "name": "*Book my appointment button clicked",  // DEPRECATED Name of web event
                "web_event_name": "*Book my appointment button clicked",  // Name of web event
                "url": "https://www.bookanappointment.com",     // DEPRECATED Web event url
                "web_event_url": "https://www.bookanappointment.com",     // Web event url
                "cvt_type": 1,
                "entry_type":7,
                "intervals": [                                            // Array of intervals
                  {
                    "date": "2019-09-30",             // Date of interval
                    "cvt_count": 4,                   // Count of CVT events in interval
                    "events": 4,                 // DEPRECATED Total leads in interval
                    "qualified_web_events": 0,        // Number of qualified web events
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,             // Number of high web events
                  },
                  {
                    "date": "2019-10-07",
                    "cvt_count": 4,
                    "events": 4,
                    "qualified_web_events": 0,
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,
                  },
                  {
                    "date": "2019-10-14",
                    "cvt_count": 1,
                    "events": 1,
                    "qualified_web_events": 0,
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,
                  }
                ]
              },
              {
                "web_event_name": "*Book my appointment button clicked *submitted",  // Name of web event
                "web_event_url": "https://www.bookanappointment.com",     // Web event url
                "cvt_type": 1,
                "entry_type":8,
                "intervals": [                                            // Array of intervals
                  {
                    "date": "2019-09-30",             // Date of interval
                    "cvt_count": 2,                   // Count of CVT events in interval
                    "events": 2,                 // DEPRECATED Total leads in interval
                    "qualified_web_events": 2,        // Number of qualified web events
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,             // Number of high web events
                  },
                  {
                    "date": "2019-10-07",
                    "cvt_count": 2,
                    "events": 2,
                    "qualified_web_events": 2,
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,
                  },
                  {
                    "date": "2019-10-14",
                    "cvt_count": 1,
                    "events": 1,
                    "qualified_web_events": 1,
                    "non_qualified_web_events": 1,
                    "high_web_events": 0,
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "global_master_advertiser_id": "USA_123456",  // Global Master Advertiser ID
  "location": "https://api.reachlocalservices.com/client_reports/cvt_events/USA_190076?campaign_status%5B%5D=running&end_date=2020-02-25&global_master_campaign_id%5B%5D=USA_2772377&interval_size=calendar_week&start_date=2019-10-01"
}
```
