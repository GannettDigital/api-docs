### **XMO Metrics**
<a name="xmedia"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/xmedia/[gmaid]?[query_params] |
#### API Name: XMO Metrics
### Usage
Use GET to retrieve campaign performance metrics for the Cross Media Optimization (XMO) campaigns. 

The data returned will include impressions, leads, clicks, calls, qualified_web_events, web_events, emails, chats and totals of the leads. Please note chats will be reported as 0 in this API. Please use the XMO channel metrics API to get the chat counts. The total leads are based on all web events.


### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function|
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|
|`markup_type`|Only valid option is "percentage".|
|`markup_value`| When `markup_type` is "percentage" this is the percent markup.|

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

| Field Name | Datatype | Description |
|---|---|---|
| name | String | Campaign Name |
| global_master_campaign_id | String | Unique Identifier for Campaign |
| organization | String | Either reachlocal or gannett |
| start_date | String | Campaign Start Date |
| end_date | String | Campaign End Date |
| type | String | Type of Campaign |
| status | String | Status of Campaign |

### Goals

| Field Name | Datatype | Description |
|---|---|---|
| goal_type_id | Int|  goal type id |
| goal_type | String|  goal type name |


### Campaign Intervals

| Field Name | Datatype | Description |
|---|---|---|
| start_date | String| Campaign Start Date |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int | Total Web Events for Interval |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total Chats for Interval |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |

### Totals

| Field Name | Datatype | Description |
|---|---|---|
| impressions | Int | Total Impressions |
| clicks | Float | Total Clicks |
| calls | Float| Total Calls |
| web_events | Int | Total Web Events |
| qualified_web_events | Int | Total lead-generating CVT/Web Events |
| emails | Float | Total Emailsl |
| chats | Float | Total Chatsl |
| leads | Float | Total Leads |
| spend | Float | Total Spend |
| ctr | Float | Overall Click-through Rate |
| cpc | Float | Overall Cost Per Click |

### Totals Per Interval

| Field Name | Datatype | Description |
|---|---|---|
|start_date | String | Start Date of interval |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int  | Total Web Events for Interval |
| qualified_web_events | Int | No | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total Chats for Interval |
| leads | Float  | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |

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
                        "chats": 0,
                        "leads": 25,
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
            "chats": 0,
            "leads": 25,
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
                "chats": 0,
                "leads": 25,
                "spend": 25.0,
                "ctr": 1.52,
                "cpc": 1.39
            }
        ]
    }
}
```
