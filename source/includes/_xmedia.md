## Xmedia

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/xmedia/[gmaid]?[query_params] |
#### API Name: xmedia
### Usage
Use GET to retrieve information for the Xmedia API that will retrieve metrics on xmedia campaigns. Data can be returned for a GMAID for a specific date range determined by start_date and end_date.  Data can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|`start_date`| yes |--|Restricts the results to those ocurring on or after this date.|
|`end_date`| yes |--|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`| no |--|Restrict results to one or more specific campaigns|
|`campaign_status[]`| no |running|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`| no |--|Restrict results to a single campaign cycle|
|`interval_size`| no | day | Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`| no | false |Set to true or false on whether to include cycle nesting.  Default value is false.|
|`markup_type`| no |--|Only valid option is "percentage".|
|`markup_value`| no | 0 |When `markup_type` is "percentage" this is the percent markup.|

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign cycle
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?campaign_cycle=USA_100"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

> Response Description

### Campaigns

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| name | String | No | Campaign Name |
| global_master_campaign_id | String | No | Unique Identifier for Campaign |
| organization | String | No | Either reachlocal or gannett |
| start_date | String | No | Campaign Start Date |
| end_date | String | Yes | Campaign End Date |
| type | String | No | Type of Campaign |
| status | String | No | Status of Campaign |

### Goals

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| goal_type_id | Int | No | goal type id |
| goal_type | String | No | goal type name |


### Campaign Intervals

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| start_date | String | No | Campaign Start Date |
| impressions | Int | No | Total Impressions for Campaign |
| clicks | Float | No | Total Clicks for Interval |
| calls | Float | No | Total Calls for Interval |
| web_events | Int | No | Total Web Events for Interval |
| qualified_web_events | Int | No | Total lead-generating CVT/Web Events for Interval |
| emails | Float | No | Total Emails for Interval |
| chats | Float | No | Total Chats for Interval |
| leads | Float | No | Total Leads for Campaign |
| spend | Float | No | Total Spend for Interval |
| ctr | Float | No | Click-through Rate for Interval |
| cpc | Float | No | Cost Per Click for Interval |

### Totals

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| impressions | Int | No | Total Impressions |
| clicks | Float | No | Total Clicks |
| calls | Float | No | Total Calls |
| web_events | Int | No | Total Web Events |
| qualified_web_events | Int | No | Total lead-generating CVT/Web Events |
| emails | Float | No | Total Emailsl |
| chats | Float | No | Total Chatsl |
| leads | Float | No | Total Leads |
| spend | Float | No | Total Spend |
| ctr | Float | No | Overall Click-through Rate |
| cpc | Float | No | Overall Cost Per Click |

### Totals Per Interval

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|start_date | String | no | Start Date of interval |
| impressions | Int | No | Total Impressions for Campaign |
| clicks | Float | No | Total Clicks for Interval |
| calls | Float | No | Total Calls for Interval |
| web_events | Int | No | Total Web Events for Interval |
| qualified_web_events | Int | No | Total lead-generating CVT/Web Events for Interval |
| emails | Float | No | Total Emails for Interval |
| chats | Float | No | Total Chats for Interval |
| leads | Float | No | Total Leads for Campaign |
| spend | Float | No | Total Spend for Interval |
| ctr | Float | No | Click-through Rate for Interval |
| cpc | Float | No | Cost Per Click for Interval |

##### Example Response

```javascript
{
    "api_name": "xmedia",
    "api_run_date": "2020-07-08",
    "earliest_date_available": "2020-07-01",
    "start_date": "2020-07-01",
    "end_date": "2020-07-01",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "campaigns": [
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_79936",
                "organization": "reachlocal",
                "start_date": "2020-07-01",
                "end_date": null,
                "type": "xmedia",
                "status": "running",
                "goals": [
                    {
                        "goal_type_id": 1,
                        "goal_type": "CPL"
                    },
                    {
                        "goal_type_id": 6,
                        "goal_type": "Contacts (Dynamic Ads - Automotive)"
                    }
                ],
                "intervals": [
                    {
                        "start_date": "2020-07-01",
                        "impressions": 1184,
                        "clicks": 18,
                        "calls": 9,
                        "web_events": 7,
                        "qualified_web_events": 3,
                        "emails": 9,
                        "chats": 10,
                        "leads": 35,
                        "spend": 25.0,
                        "ctr": 1.52,
                        "cpc": 1.39
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1184.0,
            "clicks": 18,
            "calls": 9,
            "web_events": 7,
            "qualified_web_events": 3,
            "emails": 9,
            "chats": 10,
            "leads": 35,
            "spend": 25.0,
            "ctr": 1.52,
            "cpc": 1.39
        },
        "totals_per_interval": [
            {
                "start_date": "2020-07-01",
                "impressions": 1184,
                "clicks": 18,
                "calls": 9,
                "web_events": 7,
                "qualified_web_events": 3,
                "emails": 9,
                "chats": 10,
                "leads": 35,
                "spend": 25.0,
                "ctr": 1.52,
                "cpc": 1.39
            }
        ]
    }
}
```
