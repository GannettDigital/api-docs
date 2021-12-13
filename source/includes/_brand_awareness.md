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
|`type`|Use `report`, `publisher`, `channel` to get the interval(totals), totals_by_channel or totals_by_publisher metrics breakdown|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/USA_105569?start_date=2016-12-01&end_date=2016-12-31&type=report"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&type=report"
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
    "global_master_advertiser_id": "TEST_1"
}

```
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/TEST_1?start_date=2016-12-01&end_date=2016-12-31&type=channel"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&type=channel"
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
                    "impressions": 351,
                    "clicks": 10,
                    "spend": 33.9,
                    "calls": 4,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 6,
                    "leads": 10
                },
                "display": {
                    "impressions": 0,
                    "clicks": 0,
                    "spend": 0.0,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
                },
                "social": {
                    "impressions": 3816,
                    "clicks": 14,
                    "spend": 26.12,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
                },
                "other": {
                    "impressions": 0,
                    "clicks": 0,
                    "spend": 0.0,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
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
        "totals_by_channel": [
            {
                "channel": "search",
                "impressions": 1403,
                "clicks": 54,
                "click_to_calls": 3,
                "calls": 4,
                "qualified_web_events": 1,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 2,
                "leads": 7,
                "spend": 684.73,
                "ctr": 3.85,
                "cpc": 12.68,
                "cpl": 97.82
            },
            {
                "channel": "social",
                "impressions": 830,
                "clicks": 5,
                "click_to_calls": 1,
                "calls": 1,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 1,
                "spend": 25.14,
                "ctr": 0.6,
                "cpc": 5.03,
                "cpl": 25.14
            },
            {
                "channel": "other",
                "impressions": 0,
                "clicks": 0,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "ctr": 0,
                "cpc": 0,
                "cpl": 0
            },
            {
                "channel": "display",
                "impressions": 1411,
                "clicks": 1,
                "click_to_calls": 1,
                "calls": 1,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 1,
                "spend": 10.04,
                "ctr": 0.07,
                "cpc": 10.04,
                "cpl": 10.04
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1"
}
```

```
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/TEST_1?start_date=2016-12-01&end_date=2016-12-31&type=publisher"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/brand_awareness/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&type=publisher"
```
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
                    "impressions": 351,
                    "clicks": 10,
                    "spend": 33.9,
                    "calls": 4,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 6,
                    "leads": 10
                },
                "display": {
                    "impressions": 0,
                    "clicks": 0,
                    "spend": 0.0,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
                },
                "social": {
                    "impressions": 3816,
                    "clicks": 14,
                    "spend": 26.12,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
                },
                "other": {
                    "impressions": 0,
                    "clicks": 0,
                    "spend": 0.0,
                    "calls": 0,
                    "chats": 0,
                    "emails": 0,
                    "web_events": 0,
                    "leads": 0
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
        "totals_by_publisher": [
            {
                "publisher": "Google",
                "publisher_id": 1,
                "impressions": 763,
                "clicks": 37,
                "click_to_calls": 3,
                "calls": 4,
                "qualified_web_events": 1,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 1,
                "leads": 6,
                "spend": 555.1,
                "ctr": 4.85,
                "cpc": 15.0,
                "cpl": 92.52
            },
            {
                "publisher": "Facebook",
                "publisher_id": 38,
                "impressions": 830,
                "clicks": 5,
                "click_to_calls": 1,
                "calls": 1,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 1,
                "spend": 25.14,
                "ctr": 0.6,
                "cpc": 5.03,
                "cpl": 25.14
            },
            {
                "publisher": "Yahoo Bing Search",
                "publisher_id": 17,
                "impressions": 640,
                "clicks": 17,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 1,
                "leads": 1,
                "spend": 129.63,
                "ctr": 2.66,
                "cpc": 7.63,
                "cpl": 129.63
            },
            {
                "publisher": "ReachLocal.com",
                "publisher_id": 9,
                "impressions": 0,
                "clicks": 0,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "ctr": 0,
                "cpc": 0,
                "cpl": 0
            },
            {
                "publisher": "Simpli.fi API",
                "publisher_id": 49,
                "impressions": 1411,
                "clicks": 1,
                "click_to_calls": 1,
                "calls": 1,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 1,
                "spend": 10.04,
                "ctr": 0.07,
                "cpc": 10.04,
                "cpl": 10.04
            }
        ]
    }
    "global_master_advertiser_id": "TEST_1"
}
```
