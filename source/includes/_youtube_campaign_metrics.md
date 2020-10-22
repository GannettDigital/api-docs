### **YouTube Campaign Metrics**
<a name="youtube_campaign_metrics"></a>

### Resource Overview&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/youtube/[gmaid]?[query_params]|

Use GET to retrieve information for the YouTube report for a given advertiser.

The data returned will include impressions, views, clicks, view-through rate, click-through rate, cost per view, and eCPM organized by campaign,
and also broken out by age, gender, and device type.

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
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a campaign_cycle, do not use date range params.

### Response Data Details&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/youtube/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/TEST_1?campaign_cycle=TEST_1
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Example Response

```json
{
    "report_type": "youtube",
    "report_date": "2020-10-16",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "report_data": {
        "campaigns": [
            {
                "name": "Youtube Campaign (Demo)",
                "global_master_campaign_id": "TEST_691223",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 1241,
                        "views": 21,
                        "clicks": 17,
                        "video_played_to_25_pct": 42,
                        "video_played_to_50_pct": 35,
                        "video_played_to_75_pct": 28,
                        "video_played_to_100_pct": 21,
                        "spend": 25,
                        "vtr": 1.69,
                        "ctr": 1.37,
                        "cpv": 1.19,
                        "eCPM": 20.15
                    }
                ]
            },
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_691233",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "xmedia",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 248,
                        "views": 21,
                        "clicks": 3,
                        "video_played_to_25_pct": 42,
                        "video_played_to_50_pct": 35,
                        "video_played_to_75_pct": 28,
                        "video_played_to_100_pct": 21,
                        "spend": 25,
                        "vtr": 8.47,
                        "ctr": 1.21,
                        "cpv": 1.19,
                        "eCPM": 100.81
                    }
                ]
            }
        ],
        "impression_breakdowns": {
            "age_breakdowns": {
                "age_18_24": 212,
                "age_25_34": 212,
                "age_35_44": 212,
                "age_45_54": 212,
                "age_55_64": 212,
                "age_65_up": 212,
                "unknown": 212
            },
            "gender_breakdowns": {
                "female": {
                    "total": 495,
                    "percent": 33.33
                },
                "male": {
                    "total": 495,
                    "percent": 33.33
                },
                "undetermined": {
                    "total": 495,
                    "percent": 33.33
                }
            },
            "device_breakdowns": {
                "connected_tv": {
                    "total": 297,
                    "percent": 20
                },
                "desktop": {
                    "total": 297,
                    "percent": 20
                },
                "mobile": {
                    "total": 297,
                    "percent": 20
                },
                "tablet": {
                    "total": 297,
                    "percent": 20
                },
                "unknown": {
                    "total": 297,
                    "percent": 20
                }
            }
        },
        "view_breakdowns": {
            "age_breakdowns": {
                "age_18_24": 6,
                "age_25_34": 6,
                "age_35_44": 6,
                "age_45_54": 6,
                "age_55_64": 6,
                "age_65_up": 6,
                "unknown": 6
            },
            "gender_breakdowns": {
                "female": {
                    "total": 6,
                    "percent": 33.33
                },
                "male": {
                    "total": 6,
                    "percent": 33.33
                },
                "undetermined": {
                    "total": 6,
                    "percent": 33.33
                }
            },
            "device_breakdowns": {
                "connected_tv": {
                    "total": 6,
                    "percent": 20
                },
                "desktop": {
                    "total": 6,
                    "percent": 20
                },
                "mobile": {
                    "total": 6,
                    "percent": 20
                },
                "tablet": {
                    "total": 6,
                    "percent": 20
                },
                "unknown": {
                    "total": 6,
                    "percent": 20
                }
            }
        },
        "click_breakdowns": {
            "age_breakdowns": {
                "age_18_24": 2,
                "age_25_34": 2,
                "age_35_44": 2,
                "age_45_54": 2,
                "age_55_64": 2,
                "age_65_up": 2,
                "unknown": 2
            },
            "gender_breakdowns": {
                "female": {
                    "total": 6,
                    "percent": 33.33
                },
                "male": {
                    "total": 6,
                    "percent": 33.33
                },
                "undetermined": {
                    "total": 6,
                    "percent": 33.33
                }
            },
            "device_breakdowns": {
                "connected_tv": {
                    "total": 3,
                    "percent": 20
                },
                "desktop": {
                    "total": 3,
                    "percent": 20
                },
                "mobile": {
                    "total": 3,
                    "percent": 20
                },
                "tablet": {
                    "total": 3,
                    "percent": 20
                },
                "unknown": {
                    "total": 3,
                    "percent": 20
                }
            }
        },
        "totals": {
            "impressions": 1489,
            "views": 42,
            "clicks": 20,
            "video_played_to_25_pct": 42,
            "video_played_to_50_pct": 35,
            "video_played_to_75_pct": 28,
            "video_played_to_100_pct": 21,
            "spend": 50,
            "vtr": 2.82,
            "ctr": 1.34,
            "cpv": 1.19,
            "eCPM": 33.58
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "impressions": 1489,
                "views": 42,
                "clicks": 20,
                "video_played_to_25_pct": 42,
                "video_played_to_50_pct": 35,
                "video_played_to_75_pct": 28,
                "video_played_to_100_pct": 21,
                "spend": 50,
                "vtr": 2.82,
                "ctr": 1.34,
                "cpv": 1.19,
                "eCPM": 33.58
            }
        ]
    }
}
```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|Report details|

**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|Data for specified campaign|
|impression_breakdowns|ImpressionBreakdown|ImpressionBreakdown|
|view_breakdowns|ViewBreakdown|ViewBreakdown|
|click_breakdowns|ClickBreakdown|ClickBreakdown|
|totals|Object|Data for Overall Totals|
|totals_per_interval|Object|Overall Totals Broken Down by Interval|

**Campaigns Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|global_master_campaign_id|String|No|Unique Identifier for Campaign|
|start_date|String|No|Campaign Start Date|
|end_date|String|Yes|Campaign End Date|
|type|String|No|Type of Campaign|
|status|String|No|Type of Campaign|
|intervals|Interval[]|No|Array of Interval|

**Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date for Interval|
|impressions|Int|No|Impressions for Interval|
|views|Int|No|Views for Interval|
|clicks|Int|No|Clicks for Interval|
|video_played_to_25_pct|Int|No|Number of Videos played to 25%|
|video_played_to_50_pct|Int|No|Number of Videos played to 50%|
|video_played_to_75_pct|Int|No|Number of Videos played to 75%|
|video_played_to_100_pct|Int|No|Number of Videos played to 100%|
|vtr|Float|No|View through Rate|
|ctr|Float|No|Click through Rate|
|eCPM|Float|No|Effective Cost per Thousand Impressions|

**ImpressionBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|age_breakdowns|AgeBreakdown|No|AgeBreakdown Object|
|gender_breakdowns|GenderBreakdown|No|GenderBreakdown Object|
|device_breakdowns|DeviceBreakdown|No|DeviceBreakdown Object|

**ViewBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|age_breakdowns|AgeBreakdown|No|AgeBreakdown Object|
|gender_breakdowns|GenderBreakdown|No|GenderBreakdown Object|
|device_breakdowns|DeviceBreakdown|No|DeviceBreakdown Object|

**ClickBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|age_breakdowns|AgeBreakdown|No|AgeBreakdown Object|
|gender_breakdowns|GenderBreakdown|No|GenderBreakdown Object|
|device_breakdowns|DeviceBreakdown|No|DeviceBreakdown Object|

**AgeBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|age_18_24|Int|No|Count for Age 18-24|
|age_25_34|Int|No|Count for Age 25-44|
|age_35_44|Int|No|Count for Age 35-44|
|age_45_54|Int|No|Count for Age 45-54|
|age_55_64|Int|No|Count for Age 55-64|
|age_65_up|Int|No|Count for Age 65+|
|unknown|Int|No|Count for Age unknown|


**GenderBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|female|Female|No|Female Object|
|male|Male|No|Male Object|
|undetermined|Undetermined|No|Undetermined Object|

**Female/Male/Undetermined Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|total|Int|No|Count|
|percent|Int|No|Percent of Total Count|

**DeviceBreakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|connected_tv|ConnectedTv|No|ConnectedTv Object|
|desktop|Desktop|No|Desktop Object|
|mobile|Mobile|No|Mobile Object|
|tablet|Tablet|No|Tablet Object|
|unknown|Unknown|No|Unknown Object|

**ConnectedTv/Desktop/Mobile/Tablet/Unknown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|total|Int|No|Count|
|percent|Int|No|Percent of Total Count|

**Totals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|impressions|Int|No|Total Impressions|
|views|Int|No|Total Views|
|clicks|Int|No|Total Clicks|
|video_played_to_25_pct|Int|No|Total Number of Videos played to 25%|
|video_played_to_50_pct|Int|No|Total Number of Videos played to 50%|
|video_played_to_75_pct|Int|No|Total Number of Videos played to 75%|
|video_played_to_100_pct|Int|No|Total Number of Videos played to 100%|
|vtr|Float|No|Total View through Rate|
|ctr|Float|No|Total Click through Rate|
|eCPM|Float|No|Total Effective Cost per Thousand Impressions|

**Totals Per Interval Object**

This is an Interval object across all campaigns.
