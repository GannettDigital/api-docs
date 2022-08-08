### **WPC Metrics**
<a name="wpc_metrics"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/wpc/[gmaid]?[query_params] |

Use GET to retrieve wpc performance metrics. 

The data returned will include impressions, leads, clicks, calls, qualified_web_events, web_events, emails, chats and totals of the leads.


### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function|
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns.|
|`web_publisher_campaign_id[]`|Restrict results to one or more specific campaigns for a web publisher.|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_type`|Restrict results to a single campaign type|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?web_publisher_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign cycle
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?campaign_type=search"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

>  Example Response

```javascript
{
    "api_name": "wpc",
    "api_run_date": "2022-08-05",
    "earliest_date_available": "2019-08-16",
    "start_date": "2020-09-11",
    "end_date": "2020-09-11",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "USA_1",
    "advertiser_name": "Advertiser 1",
    "report_data": {
        "wpcs": [
            {
                "id": 12345,
                "campaign": {
                    "name": "first_campaign",
                    "id": 123
                },
                "name": "Name",
                "channel": "search",
                "geo_type": "National",
                "start_date": "2021-01-11",
                "end_date": "2021-01-15",
                "impressions": 2,
                "clicks": 0,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "ctr": 0.0,
                "cpc": 0,
                "cpl": 0,
                "intervals": [
                    {
                        "start_date": "2020-09-11",
                        "impressions": 2,
                        "clicks": 0,
                        "click_to_calls": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "leads": 0,
                        "spend": 0.0,
                        "ctr": 0.0,
                        "cpc": 0,
                        "cpl": 0
                    }
                ]
            },
            {
                "id": 32142,
                "campaign": {
                    "name": "second_campaign",
                    "id": 1234
                },
                "name": "Google City",
                "channel": "search",
                "geo_type": "City",
                "start_date": "2021-01-11",
                "end_date": "2021-01-15",
                "impressions": 206,
                "clicks": 7,
                "click_to_calls": 2,
                "calls": 4,
                "qualified_web_events": 0,
                "non_qualified_web_events": 4,
                "emails": 0,
                "chats": 0,
                "leads": 4,
                "spend": 28.74,
                "ctr": 3.4,
                "cpc": 4.11,
                "cpl": 7.19,
                "intervals": [
                    {
                        "start_date": "2020-09-11",
                        "impressions": 206,
                        "clicks": 7,
                        "click_to_calls": 2,
                        "calls": 4,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 4,
                        "emails": 0,
                        "chats": 0,
                        "leads": 4,
                        "spend": 28.74,
                        "ctr": 3.4,
                        "cpc": 4.11,
                        "cpl": 7.19
                    }
                ]
            }
        ]
    }
}
```


**wpcs**

| Field Name | Datatype | Description |
|---|---|---|
| name | String | WPC Name |
| start_date | String | WPC Start Date |
| end_date | String | WPC End Date |
| channel | String | Channel of WPC |
| geo_type | String | Geo Type of WPC |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int | Total Web Events for Interval |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total chat generated by paid traffic for Interval |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |

**Intervals Array**

| Field Name | Datatype | Description |
|---|---|---|
| start_date | String| Campaign Start Date |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int | Total Web Events for Interval |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total chat generated by paid traffic for Interval |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |
