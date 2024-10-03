### **Daily Campaign Acticvity**

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/daily_campaign_activity/[gmaid]?[query_params]|

Use GET to retrieve information for the Daily Campaign Activity report for a given advertiser.

The data returned will include impressions, leads, clicks, calls, qualified_web_events, web_events, emails, and spend values organized by campaign.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|


To specify a date range:

   - Specify start_date and end_date.

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/daily_campaign_activity/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```

>  Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/daily_campaign_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31"
```

>  Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/daily_campaign_activity/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31"
```


```json
{
    "advertiser_name": "Test",
    "business_id": "USA_12344",
    "business_name": "TEST",
    "global_master_advertiser_id": "USA_12344",
    "report_type": "daily_campaign_activity",
    "report_date": "2024-08-27",
    "earliest_date_available": "2016-09-28",
    "start_date": "2024-08-01",
    "end_date": "2024-08-02",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "SEM | TEST",
                "global_master_campaign_id": "USA_123442",
                "start_date": "2016-07-02",
                "end_date": null,
                "type": "search",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2024-08-01",
                        "impressions": 72,
                        "leads": 3,
                        "clicks": 7,
                        "calls": 3,
                        "qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "spend": 37.71
                    },
                    {
                        "start_date": "2024-08-02",
                        "impressions": 127,
                        "leads": 3,
                        "clicks": 6,
                        "calls": 1,
                        "qualified_web_events": 2,
                        "emails": 0,
                        "chats": 0,
                        "spend": 31.22
                    }
                ]
            },
            {
                "name": "Test 20230606",
                "global_master_campaign_id": "USA_1234432",
                "start_date": "2023-06-26",
                "end_date": null,
                "type": "other",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2024-08-01",
                        "impressions": 0,
                        "leads": 22,
                        "clicks": 0,
                        "calls": 22,
                        "qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "spend": 0.0
                    },
                    {
                        "start_date": "2024-08-02",
                        "impressions": 0,
                        "leads": 7,
                        "clicks": 0,
                        "calls": 7,
                        "qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "spend": 0.0
                    }
                ]
            },
            {
                "name": "TEST 3",
                "global_master_campaign_id": "USA_1234412",
                "start_date": "2023-10-27",
                "end_date": null,
                "type": "other",
                "status": "ended",
                "intervals": [
                    {
                        "start_date": "2024-08-01",
                        "impressions": 0,
                        "leads": 0,
                        "clicks": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "spend": 0.0
                    },
                    {
                        "start_date": "2024-08-02",
                        "impressions": 0,
                        "leads": 0,
                        "clicks": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "spend": 0.0
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 199,
            "leads": 35,
            "clicks": 13,
            "calls": 33,
            "qualified_web_events": 2,
            "emails": 0,
            "chats": 0,
            "spend": 68
        },
        "totals_per_interval": [
            {
                "start_date": "2024-08-01",
                "impressions": 72,
                "leads": 25,
                "clicks": 7,
                "calls": 25,
                "qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "spend": 37.71
            },
            {
                "start_date": "2024-08-02",
                "impressions": 127,
                "leads": 10,
                "clicks": 6,
                "calls": 8,
                "qualified_web_events": 2,
                "emails": 0,
                "chats": 0,
                "spend": 31.22
            }
        ]
    }
}

```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Type of report|
|report_date|String|Date report ran|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|business_id|Integer|Business id|
|business_name|String|Business name|
|advertiser_name|String|Advertiser name|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency for Advertiser|
|report_data|Object|[Report Data Object.](#searchreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|

<a name="searchreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Array|All data for campigns. [Campaigns Array.](#searchcampaigns)|
|totals|Object|Totals data. [Totals Details.](#searchtotals)|
|totals_per_interval|Array|Totals per interval over multiple campaigns. [Totals Per Interval Details.](#searchtotalsperinterval)|

<a name="searchcampaigns"></a>
**Campaigns Array**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign name|
|global_master_campaign_id|String|Identifier for campaign|
|start_date|String|Start date for campaign|
|end_date|String|End date for campaign|
|type|String|Type of campaign|
|status|String|Status of campaign|
|intervals|Array|Data for specified interval. [Intervals Array.](#searchintervals)|

<a name="searchintervals"></a>
**Intervals Array**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|impressions|Integer|Impressions for interval|
|impression_share|Integer|Impression share for interval|
|leads|Integer|Leads for interval|
|clicks|Integer|Clicks for interval|
|chats|Integer|Chats for interval|
|calls|Integer|Calls for interval|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|emails|Integer|Emails for interval|
|spend|Integer|Spend for interval|


<a name="searchtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|impressions|Integer|Total impressions|
|clicks|Integer|Total click events|
|chats|Integer|Total chat generated by paid traffic|
|calls|Integer|Total call events|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|emails|Integer|Total email events|
|leads|Integer|Total leads|
|spend|Integer|Total spend|
