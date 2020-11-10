## Brand Awareness

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/brand_awareness/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve information for the Brand Awareness report for a given advertiser.

The data returned will include impressions and clicks for each interval, broken out by campaign type (social, search, display, youtube, geofence, xmedia and email) as well as totals for that interval.  Note that display campaigns with web_publisher_id = 38 will count as facebook campaigns, not display campaigns.

Totals across all the intervals are also provided, again broken out by campaign type, but also totals for all campaign types.

Available campaigns lists only campaigns of type social, search, and display for the given gmaid.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|


To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```

#### Response Description
```javascript
{
    "report_type": "brand_awareness",
    "report_date": "2020-03-24",
    "earliest_date_available": "2020-03-01",
    "start_date": "2020-03-01",
    "end_date": "2020-03-01",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "intervals": [
            {
                "start_date": "2020-03-01",
                "search": {
                    "impressions": 1205,
                    "clicks": 13,
                    "walk_ins": 0,
                    "spend": 25.0,
                    "calls": 5,
                    "chats": 5,
                    "emails": 5,
                    "web_events": 7,
                    "leads": 22
                },
                "display": {
                    "impressions": 2679,
                    "clicks": 35,
                    "walk_ins": 0,
                    "spend": 25.0,
                    "calls": 5,
                    "chats": 9,
                    "emails": 7,
                    "web_events": 5,
                    "leads": 26
                },
                "youtube": {
                    "impressions": 2446,
                    "clicks": 29,
                    "walk_ins": 30,
                    "spend": 50.0,
                    "calls": 16,
                    "chats": 13,
                    "emails": 19,
                    "web_events": 13,
                    "leads": 61
                },
                "geofence": {
                    "impressions": 2342,
                    "clicks": 30,
                    "walk_ins": 50,
                    "spend": 50.0,
                    "calls": 12,
                    "chats": 13,
                    "emails": 16,
                    "web_events": 13,
                    "leads": 54
                },
                "facebook": {
                    "impressions": 2513,
                    "clicks": 27,
                    "walk_ins": 30,
                    "spend": 50.0,
                    "calls": 16,
                    "chats": 15,
                    "emails": 18,
                    "web_events": 10,
                    "leads": 59
                },
                "xmedia": {
                    "impressions": 1131,
                    "clicks": 10,
                    "walk_ins": 30,
                    "spend": 25.0,
                    "calls": 7,
                    "chats": 8,
                    "emails": 9,
                    "web_events": 5,
                    "leads": 29
                },
                "email": {
                    "impressions": 1000,
                    "clicks": 10,
                    "walk_ins": 30,
                    "spend": 25.0,
                    "calls": 10,
                    "chats": 10,
                    "emails": 10,
                    "web_events": 5,
                    "leads": 30
                },
                "totals": {
                    "impressions": 9923,
                    "clicks": 124,
                    "walk_ins": 80,
                    "spend": 175.0,
                    "calls": 50,
                    "chats": 49,
                    "emails": 57,
                    "web_events": 43,
                    "leads": 194
                }
            }
        ],
        "totals": {
            "impressions": 9923,
            "clicks": 124,
            "walk_ins": 80,
            "spend": 175.0,
            "calls": 50,
            "chats": 49,
            "emails": 57,
            "web_events": 43,
            "leads": 194,
            "unique_calls": 50,
            "calls_connected": 50,
            "average_call_length": 182.68,
            "ctr": 2.18,
            "search": {
                "impressions": 1205,
                "clicks": 13,
                "walk_ins": 0,
                "spend": 25.0,
                "calls": 5,
                "chats": 5,
                "emails": 5,
                "web_events": 7,
                "leads": 22,
                "unique_calls": 5,
                "calls_connected": 5,
                "average_call_length": 137.0,
                "ctr": 1.08
            },
            "display": {
                "impressions": 2679,
                "clicks": 35,
                "walk_ins": 0,
                "spend": 25.0,
                "calls": 5,
                "chats": 9,
                "emails": 7,
                "web_events": 5,
                "leads": 26,
                "unique_calls": 5,
                "calls_connected": 5,
                "average_call_length": 91.4,
                "ctr": 1.31
            },
            "youtube": {
                "impressions": 2446,
                "clicks": 29,
                "walk_ins": 30,
                "spend": 50.0,
                "calls": 16,
                "chats": 13,
                "emails": 19,
                "web_events": 13,
                "leads": 61,
                "unique_calls": 16,
                "calls_connected": 16,
                "average_call_length": 98.63,
                "ctr": 1.19
            },
            "geofence": {
                "impressions": 2342,
                "clicks": 30,
                "walk_ins": 50,
                "spend": 50.0,
                "calls": 12,
                "chats": 13,
                "emails": 16,
                "web_events": 13,
                "leads": 54,
                "unique_calls": 12,
                "calls_connected": 12,
                "average_call_length": 76.58,
                "ctr": 1.28
            },
            "facebook": {
                "impressions": 2513,
                "clicks": 27,
                "walk_ins": 30,
                "spend": 50.0,
                "calls": 16,
                "chats": 15,
                "emails": 18,
                "web_events": 10,
                "leads": 59,
                "unique_calls": 16,
                "calls_connected": 16,
                "average_call_length": 100.63,
                "ctr": 1.07
            },
            "xmedia": {
                "impressions": 1131,
                "clicks": 10,
                "walk_ins": 30,
                "spend": 25.0,
                "calls": 7,
                "chats": 8,
                "emails": 9,
                "web_events": 5,
                "leads": 29,
                "unique_calls": 7,
                "calls_connected": 7,
                "average_call_length": 81.57,
                "ctr": 0.88
            },
            "email": {
                "impressions": 1000,
                "clicks": 10,
                "walk_ins": 30,
                "spend": 25.0,
                "calls": 10,
                "chats": 10,
                "emails": 10,
                "web_events": 5,
                "leads": 30,
                "unique_calls": 10,
                "calls_connected": 10,
                "average_call_length": 80,
                "ctr": 0.90
            }
        }
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/brand_awareness/TEST_1?end_date=2020-03-01&start_date=2020-03-01"
}
```
