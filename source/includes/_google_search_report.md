### **Google Search Metrics**

### Resource&nbsp;Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/google_search_activity/[gmaid]?[query_params]|

**Usage**

Use GET to retrieve the Google Search Activity Compliance report for a given advertiser.

The data returned will include impressions, clicks, and media cost values organized by campaign and campaign_cycle.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|campaign_cycle|Restrict results to a single campaign cycle|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles|Set to true or false on whether to include cycle nesting.  Default value is false|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a campaign_cycle, do not use date range params.

### Response&nbsp;Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/TEST_1?campaign_cycle=TEST_1"
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/google_search_activity/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

> Example Response

```json
{
    "report_type": "google_search_activity",
    "report_date": "2020-10-16",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Search Campaign (Demo)",
                "global_master_campaign_id": "TEST_1368547",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "search",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 1065,
                        "clicks": 17,
                        "media_cost": 25
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1065,
            "clicks": 17,
            "media_cost": 25
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "impressions": 1065,
                "clicks": 17,
                "media_cost": 25
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.qa.reachlocalservices.com/client_reports/google_search_activity/TEST_1?end_date=2020-10-10&start_date=2020-10-10"
}

```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Type of report|
|report_date|String|Date report ran|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency for Advertiser|
|report_data|Object|[Report Data Object.](#googlesearchreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|
|location|String|Location URL|
<a name="googlesearchreportdata"></a>

**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Array|All data for campigns. [Campaigns Array.](#googlesearchcampaigns)|
|totals|Object|Totals data. [Totals Details.](#googlesearchtotals)|
|totals_per_interval|Array|Totals per interval over multiple campaigns. [Totals Per Interval Details.](#googlesearchtotalsperinterval)|

<a name="googlesearchcampaigns"></a>
**Campaigns Array**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign name|
|global_master_campaign_id|String|Identifier for campaign|
|start_date|String|Start date for campaign|
|end_date|String|End date for campaign|
|type|String|Type of campaign|
|status|String|Status of campaign|
|intervals|Interval[]|Array of Interval [Intervals Array.](#googlesearchintervals)|

<a name="googlesearchintervals"></a>
**Intervals Array**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|impressions|Integer|Impressions for interval|
|clicks|Integer|Clicks for interval|
|media_cost|Float|Cost for interval|

<a name="googlesearchtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|impressions|Integer|Total Impressions|
|clicks|Integer|Total Clicks|
|media_cost|Float|Total Cost|

<a name="googlesearchtotalsperinterval"></a>
**Totals Per Interval Object**

This is an Interval object for the whole date range.
