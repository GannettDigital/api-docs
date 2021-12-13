## Business Call Metrics

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/business_call_events/[business_id]?[query_params]
```

#### Usage
Use GET to retrieve call activity for all advertisers for a given business.

The data returned will include total calls, total connected calls and a breakdown of call duration for each interval, broken out by advertiser and campaign.

The business_id needs to include the region so that it is globally unique (USA_6338 or CAN_6338, not 6338)

If the timeframe between start date and end date is more than 13 months and interval is calendar_month or more than 120 days and interval is days, an error is returned

```
More than 120 days of data for daily interval or more than 13 months of data is not supported
```

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those ocurring on or after this date.|
|`end_date`|Yes|Restricts the results to those ocurring on or before this date.|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_call_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01"
```
###### Retrieve data for a specific range of dates limitted to ended and stopped campaigns
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_call_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01&campaign_status[]=ended,stopped"
```

###### Retrieve data for a specific range of dates grouped by calendar month
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_call_events/USA_105569?start_date=2019-01-01&end_date=2019-03-01&interval_size=calendar_month"
```

#### Response Description
```javascript
{
    "report_type": "business_call_events",
    "report_date": "2019-07-23",
    "business_id": "USA_6338",
    "business_name": "Kiddie Academy",
    "start_date": "2019-01-01",
    "end_date": "2019-04-01",
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
                        "offer_id": 666,
                        "organization": "reachlocal",
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "date": "2019-01-01",
                                "calls": 17,
                                "connected_calls": 14,
                                "calls_over_30": 10,
                                "calls_over_60": 7,
                                "calls_over_90": 6,
                                "calls_over_180": 2
                            },
                            {
                                "date": "2019-02-01",
                                "calls": 33,
                                "connected_calls": 22,
                                "calls_over_30": 13,
                                "calls_over_60": 9,
                                "calls_over_90": 7,
                                "calls_over_180": 1
                            },
                            {
                                "date": "2019-03-01",
                                "calls": 22,
                                "connected_calls": 20,
                                "calls_over_30": 16,
                                "calls_over_60": 10,
                                "calls_over_90": 9,
                                "calls_over_180": 2
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78731",
                "name": "KA - Elkridge",
                "aid": 78731,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465191",
                        "name": "KA - Elkridge",
                        "offer_id": 666,
                        "organization": "reachlocal",
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "date": "2019-01-01",
                                "calls": 15,
                                "connected_calls": 15,
                                "calls_over_30": 8,
                                "calls_over_60": 5,
                                "calls_over_90": 4,
                                "calls_over_180": 1
                            },
                            {
                                "date": "2019-02-01",
                                "calls": 11,
                                "connected_calls": 11,
                                "calls_over_30": 5,
                                "calls_over_60": 0,
                                "calls_over_90": 0,
                                "calls_over_180": 0
                            },
                            {
                                "date": "2019-03-01",
                                "calls": 11,
                                "connected_calls": 10,
                                "calls_over_30": 4,
                                "calls_over_60": 2,
                                "calls_over_90": 1,
                                "calls_over_180": 0
                            }
                        ]
                    }
                ]
            }
        ]
    }
}
```
