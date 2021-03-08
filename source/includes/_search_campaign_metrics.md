### **Search Campaign Metrics**
<a name="search_campaign_metrics"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/search_activity/[gmaid]?[query_params]|

Use GET to retrieve information for the Search Activity report for a given advertiser.

The data returned will include impressions, leads, clicks, calls, web_events, emails, and spend values organized by campaign and campaign_cycle.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|campaign_cycle|Restrict results to a single campaign cycle|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles|Set to true or false on whether to include cycle nesting.  **Default value is false**|
|include_full_channel|Optional, default: false.  Includes all metrics for the search channel.  Xmedia campaigns will only contain metrics that belong to the search channel, rather than full campaign metrics.|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a campaign_cycle, do not use date range params.

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```

>  Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/TEST_1?campaign_cycle=TEST_1"
```

>  Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31"
```

>  Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```


>  Example Response

```json
{
    "report_type": "search_activity",
    "report_date": "2020-10-15",
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
                        "impression_share": 0,
                        "leads": 21,
                        "clicks": 17,
                        "calls": 6,
                        "web_events": 7,
                        "qualified_web_events": 5,
                        "emails": 8,
                        "spend": 25,
                        "ctr": 1.6,
                        "cpc": 1.47,
                        "position": null,
                        "device_breakdowns": {
                            "impression_share": {
                                "mobile": 0,
                                "desktop": 0,
                                "tablet": 0
                            },
                            "impressions": {
                                "mobile": 1000,
                                "desktop": 65,
                                "tablet": 0
                            },
                            "clicks": {
                                "mobile": 14,
                                "desktop": 3,
                                "tablet": 0
                            }
                        }
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1065,
            "clicks": 17,
            "calls": 6,
            "web_events": 7,
            "qualified_web_events": 5,
            "emails": 8,
            "leads": 21,
            "spend": 25,
            "ctr": 1.6,
            "cpc": 1.47,
            "device_breakdowns": {
                "impressions": {
                    "desktop": {
                        "total": 65,
                        "percent": 6.1
                    },
                    "mobile": {
                        "total": 1000,
                        "percent": 93.9
                    },
                    "tablet": {
                        "total": 0,
                        "percent": 0
                    }
                },
                "clicks": {
                    "desktop": {
                        "total": 3,
                        "percent": 17.65
                    },
                    "mobile": {
                        "total": 14,
                        "percent": 82.35
                    },
                    "tablet": {
                        "total": 0,
                        "percent": 0
                    }
                }
            },
            "position": null
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "impressions": 1065,
                "impression_share": 0,
                "leads": 21,
                "clicks": 17,
                "calls": 6,
                "web_events": 7,
                "qualified_web_events": 5,
                "emails": 8,
                "spend": 25,
                "ctr": 1.6,
                "cpc": 1.47,
                "position": null,
                "device_breakdowns": {
                    "impression_share": {
                        "mobile": 0,
                        "desktop": 0,
                        "tablet": 0
                    },
                    "impressions": {
                        "mobile": 1000,
                        "desktop": 65,
                        "tablet": 0
                    },
                    "clicks": {
                        "mobile": 14,
                        "desktop": 3,
                        "tablet": 0
                    }
                }
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.qa.reachlocalservices.com/client_reports/search_activity/TEST_1?end_date=2020-10-10&start_date=2020-10-10"
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
|report_data|Object|[Report Data Object.](#searchreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|
|location|String|Location URL|

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
|calls|Integer|Calls for interval|
|web_events|Integer|Web events for interval|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|emails|Integer|Emails for interval|
|spend|Integer|Spend for interval|
|ctr|Integer|Click through rate for interval|
|cpc|Integer|Cost per click for interval|
|device_breakdowns|DeviceBreakdown[]|Array of [DeviceBreakdown](#searchdevicebreakdowns)|

<a name="searchtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|impressions|Integer|Total impressions|
|clicks|Integer|Total click events|
|calls|Integer|Total call events|
|web_events|Integer|Total web events|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|emails|Integer|Total email events|
|leads|Integer|Total leads|
|spend|Integer|Total spend|
|ctr|Integer|Total click through rate|
|cpc|Integer|Toal cost per click|
|device_breakdowns|DeviceBreakdown[]|Array of [DeviceBreakdown](#searchdevicebreakdowns)|

<a name="searchdevicebreakdowns"></a>
**Device Breakdowns Object**

|Field Name|Datatype|Description|
|---|---|---|
|Impressions|Object|Device breakdown of impressions. [Impressions Object.](#searchimpressions)|
|Impression Share|Object|Device breakdown of impression share. [Impression Share Object.](#searchimpressionshare)|
|Clicks|Object|Device breakdown of clicks. [Clicks Object](#searchclicks)|

<a name="searchimpressions"></a>
**Impressions Object**

|Field Name|Datatype|Description|
|---|---|---|
|desktop|Object|Total and percent of total for impressions of desktop|
|mobile|Object|Total and percent of total for impressions of mobile|
|tablet|Object|Total and percent of total for impressions of tablet|

<a name="searchimpressionshare"></a>
**Impression Share Object**

|Field Name|Datatype|Description|
|---|---|---|
|desktop|Object|Percent impression share of desktop|
|mobile|Object|Percent impression share of mobile|
|tablet|Object|Percent impression share of tablet|

<a name="searchclicks"></a>
**Clicks Object**

|Field Name|Datatype|Description|
|---|---|---|
|desktop|Object|Total and percent of total for clicks of desktop|
|mobile|Object|Total and percent of total for clicks of mobile|
|tablet|Object|Total and percent of total for clicks of tablet|

<a name="searchtotalsperinterval"></a>
**Totals Per Interval Object**

This is an Interval object across all campaigns.

<a name="searchcycles"></a>
**Cycles Array**

|Field Name|Datatype|Description|
|---|---|---|
|campaign_cycle|String|Name of cycle|
|start_date|String|Start date of cycle|
|end_date|String|End date of cycle|
|intervals|Array|Data for specified interval. [Intervals Array.](#searchintervals)|

