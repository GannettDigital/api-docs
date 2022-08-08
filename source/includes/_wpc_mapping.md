### **WPC Metrics**
<a name="wpc_metrics"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/wpc_mapping/[gmaid]?[query_params] |

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
> Retrieve data for a specific campaign type
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
    "api_name": "xmedia_channel",
    "api_run_date": "2020-09-24",
    "earliest_date_available": "2020-09-10",
    "start_date": "2020-09-15",
    "end_date": "2020-09-15",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "campaigns": [
            {
                "name": "search Campaign (Demo)",
                "global_master_campaign_id": "TEST_123",
                "organization": "reachlocal",
                "start_date": "2020-09-10",
                "end_date": null,
                "type": "search",
                "status": "running",
                "impressions": 1069,
                "clicks": 17,
                "click_to_calls": 10,
                "calls": 10,
                "qualified_web_events": 2,
                "non_qualified_web_events": 2,
                "emails": 8,
                "chats": 8,
                "leads": 28,
                "spend": 25.0,
                "ctr": 1.59,
                "cpc": 1.47,
                "cpl": 0.89,
                "cycles": [
                    {
                        "campaign_cycle": "TEST_24639",
                        "start_date": "2020-09-10",
                        "end_date": null,
                        "impressions": 1069,
                        "clicks": 17,
                        "click_to_calls": 10,
                        "calls": 10,
                        "qualified_web_events": 2,
                        "non_qualified_web_events": 2,
                        "emails": 8,
                        "chats": 8,
                        "leads": 28,
                        "spend": 25.0,
                        "ctr": 1.59,
                        "cpc": 1.47,
                        "cpl": 0.89,
                        "wpcs": [
                            {
                                "id": 24640,
                                "name": "Search National",
                                "channel": "search",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 213,
                                "clicks": 3,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 0,
                                "non_qualified_web_events": 0,
                                "emails": 1,
                                "chats": 1,
                                "leads": 4,
                                "spend": 5.0,
                                "ctr": 1.41,
                                "cpc": 1.67,
                                "cpl": 1.25,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 213,
                                        "clicks": 3,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 0,
                                        "non_qualified_web_events": 0,
                                        "emails": 1,
                                        "chats": 1,
                                        "leads": 4,
                                        "spend": 5.0,
                                        "ctr": 1.41,
                                        "cpc": 1.67,
                                        "cpl": 1.25
                                    }
                                ]
                            }
                        ]
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
