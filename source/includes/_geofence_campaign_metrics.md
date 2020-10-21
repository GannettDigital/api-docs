### **GeoFence Campaign Metrics**
<a name="geofence_campaign_metrics"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/geofence_summary/[gmaid]?[query_params]|


**Usage**

Use GET to retrieve information for the GeoFence Summary Report for a given advertiser.

The data returned will include impressions, walk_ins, ctr, clicks, cpc, cpw, cpm, and spend organized by campaign
and broken down by geofence and conversion_fence.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|geofence[]|Restrict results to the given geofence ids.  Geofence ids can be found in the available_geofences section. This should be a comma separated string. Ex: geofence[]=1,2|
|conversion_fence[]|Restrict results to the given conversion fence ids.  Conversion Fence ids can be found in the available_conversion_fences section. This should be a comma separated string. Ex: conversion_fence[]=1,2|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|


### Response Data Details:

> Retrieve data for a specific range of datesß

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/geofence_summary/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for specific geofences and conversion_fences

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/TEST_1?&goefence[]=1,2&conversion_fence[]=1,2&start_date=2016-10-01&end_date=2016-12-31
```

> Example Response

```json
{
    "report_type": "geofence_summary",
    "report_date": "2020-10-15",
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
                "name": "Geofence Campaign (Demo)",
                "global_master_campaign_id": "TEST_1368571",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "display",
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 1136,
                        "walk_ins": 17,
                        "ctr": 0.88,
                        "clicks": 10,
                        "cpc": 2.5,
                        "cpw": 1.47,
                        "cpm": 22.01,
                        "spend": 25,
                        "geofences": [
                            {
                                "impressions": 522,
                                "walk_ins": 10,
                                "ctr": 0.57,
                                "clicks": 3,
                                "cpc": 2.1,
                                "cpw": 0.63,
                                "cpm": 12.06,
                                "spend": 6.29,
                                "name": "Geofence (Demo) 1",
                                "geofence_id": 1,
                                "conversion_fences": [
                                    {
                                        "name": "Conversion Fense (Demo) 1",
                                        "conversion_fence_id": 1,
                                        "walk_ins": 6,
                                        "cpw": 0.13,
                                        "spend": 0.79
                                    },
                                    {
                                        "name": "Conversion Fense (Demo) 2",
                                        "conversion_fence_id": 2,
                                        "walk_ins": 4,
                                        "cpw": 1.38,
                                        "spend": 5.51
                                    }
                                ]
                            },
                            {
                                "impressions": 614,
                                "walk_ins": 7,
                                "ctr": 1.14,
                                "clicks": 7,
                                "cpc": 2.67,
                                "cpw": 2.67,
                                "cpm": 30.47,
                                "spend": 18.71,
                                "name": "Geofence (Demo) 2",
                                "geofence_id": 2,
                                "conversion_fences": [
                                    {
                                        "name": "Conversion Fense (Demo) 1",
                                        "conversion_fence_id": 1,
                                        "walk_ins": 4,
                                        "cpw": 1.53,
                                        "spend": 6.11
                                    },
                                    {
                                        "name": "Conversion Fense (Demo) 2",
                                        "conversion_fence_id": 2,
                                        "walk_ins": 3,
                                        "cpw": 4.2,
                                        "spend": 12.6
                                    }
                                ]
                            }
                        ],
                        "conversion_fences": [
                            {
                                "name": "Conversion Fense (Demo) 1",
                                "conversion_fence_id": 1,
                                "walk_ins": 10,
                                "geofences": [
                                    {
                                        "name": "Geofence (Demo) 1",
                                        "geofence_id": 1,
                                        "walk_ins": 6,
                                        "cpw": 0.13
                                    },
                                    {
                                        "name": "Geofence (Demo) 2",
                                        "geofence_id": 2,
                                        "walk_ins": 4,
                                        "cpw": 1.53
                                    }
                                ],
                                "cpw": 0.69
                            },
                            {
                                "name": "Conversion Fense (Demo) 2",
                                "conversion_fence_id": 2,
                                "walk_ins": 7,
                                "geofences": [
                                    {
                                        "name": "Geofence (Demo) 1",
                                        "geofence_id": 1,
                                        "walk_ins": 4,
                                        "cpw": 1.38
                                    },
                                    {
                                        "name": "Geofence (Demo) 2",
                                        "geofence_id": 2,
                                        "walk_ins": 3,
                                        "cpw": 4.2
                                    }
                                ],
                                "cpw": 2.59
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_1368577",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "xmedia",
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 200,
                        "walk_ins": 30,
                        "ctr": 1,
                        "clicks": 2,
                        "cpc": 2.08,
                        "cpw": 0.14,
                        "cpm": 20.83,
                        "spend": 4.17,
                        "geofences": [
                            {
                                "impressions": 30,
                                "walk_ins": 11,
                                "ctr": 0,
                                "clicks": 0,
                                "cpc": 0,
                                "cpw": 0.11,
                                "cpm": 41.74,
                                "spend": 1.25,
                                "name": "Geofence (Demo) 1",
                                "geofence_id": 1,
                                "conversion_fences": [
                                    {
                                        "name": "Conversion Fense (Demo) 1",
                                        "conversion_fence_id": 1,
                                        "walk_ins": 5,
                                        "cpw": 0.01,
                                        "spend": 0.07
                                    },
                                    {
                                        "name": "Conversion Fense (Demo) 2",
                                        "conversion_fence_id": 2,
                                        "walk_ins": 6,
                                        "cpw": 0.2,
                                        "spend": 1.18
                                    }
                                ]
                            },
                            {
                                "impressions": 170,
                                "walk_ins": 19,
                                "ctr": 1.18,
                                "clicks": 2,
                                "cpc": 1.46,
                                "cpw": 0.15,
                                "cpm": 17.14,
                                "spend": 2.91,
                                "name": "Geofence (Demo) 2",
                                "geofence_id": 2,
                                "conversion_fences": [
                                    {
                                        "name": "Conversion Fense (Demo) 1",
                                        "conversion_fence_id": 1,
                                        "walk_ins": 10,
                                        "cpw": 0.08,
                                        "spend": 0.78
                                    },
                                    {
                                        "name": "Conversion Fense (Demo) 2",
                                        "conversion_fence_id": 2,
                                        "walk_ins": 9,
                                        "cpw": 0.24,
                                        "spend": 2.14
                                    }
                                ]
                            }
                        ],
                        "conversion_fences": [
                            {
                                "name": "Conversion Fense (Demo) 1",
                                "conversion_fence_id": 1,
                                "walk_ins": 15,
                                "geofences": [
                                    {
                                        "name": "Geofence (Demo) 1",
                                        "geofence_id": 1,
                                        "walk_ins": 5,
                                        "cpw": 0.01
                                    },
                                    {
                                        "name": "Geofence (Demo) 2",
                                        "geofence_id": 2,
                                        "walk_ins": 10,
                                        "cpw": 0.08
                                    }
                                ],
                                "cpw": 0.06
                            },
                            {
                                "name": "Conversion Fense (Demo) 2",
                                "conversion_fence_id": 2,
                                "walk_ins": 15,
                                "geofences": [
                                    {
                                        "name": "Geofence (Demo) 1",
                                        "geofence_id": 1,
                                        "walk_ins": 6,
                                        "cpw": 0.2
                                    },
                                    {
                                        "name": "Geofence (Demo) 2",
                                        "geofence_id": 2,
                                        "walk_ins": 9,
                                        "cpw": 0.24
                                    }
                                ],
                                "cpw": 0.22
                            }
                        ]
                    }
                ]
            }
        ],
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "impressions": 1336,
                "walk_ins": 47,
                "ctr": 0.9,
                "clicks": 12,
                "cpc": 2.43,
                "cpw": 0.62,
                "cpm": 21.83,
                "spend": 29.17
            }
        ],
        "totals": {
            "impressions": 1336,
            "walk_ins": 47,
            "ctr": 0.9,
            "clicks": 12,
            "cpc": 2.43,
            "cpw": 0.62,
            "cpm": 21.83,
            "spend": 29.17
        },
        "available_geofences": [
            {
                "geofence_id": 1,
                "geofence_name": "Geofence (Demo) 1"
            },
            {
                "geofence_id": 2,
                "geofence_name": "Geofence (Demo) 2"
            }
        ],
        "available_conversion_fences": [
            {
                "conversion_fence_id": 1,
                "conversion_fence_name": "Conversion Fense (Demo) 1"
            },
            {
                "conversion_fence_id": 2,
                "conversion_fence_name": "Conversion Fense (Demo) 2"
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
|totals|Object|Data for Overall Totals|
|totals_per_interval|Object|Overall Totals Broken Down by Interval|
|available_geofences|AvailableGeofence[]|Array of AvailableGeofence|
|available_conversion_fences|AvailableConversionGeofence[]|Array of AvailableConversionGeofence|

**Campaigns Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|global_master_campaign_id|String|No|Unique Identifier for Campaign|
|start_date|String|No|Campaign Start Date|
|end_date|String|Yes|Campaign End Date|
|type|String|No|Type of Campaign|
|cycles|Cycle[]|No|Array of Cycle|
|intervals|Interval[]|No|Array of Interval|

**Cycles Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|campaign_cycle|String|No|Unique Identifier for Cycle|
|start_date|String|No|Cycle Start Date|
|end_date|String|Yes|Cycle End Date|
|intervals|Interval[]|No|Array of Interval|

**Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date for Interval|
|impressions|Int|No|Total Impressions for Interval|
|walk_ins|Int|No|Total Walk-Ins for Interval|
|ctr|Float|No|Total Click through Rate for Interval|
|clicks|Int|No|Total Clicks for Interval|
|cpc|Float|No|Total Cost per Click for Interval|
|cpw|Float|No|Total Cost per Walk-in for Interval|
|cpm|Float|No|Total Cost per Milli for Interval|
|spend|Float|No|Total Spend for Interval|
|geofences|String|Geofence[]|Array of Geofence|
|conversion_fences|ConversionFence[]|No|Array of ConversionFence|

**Geofence Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Geofence Name|
|geofence_id|Int|No|Geofence ID|
|impressions|Int|No|Total Impressions for Interval|
|walk_ins|Int|No|Total Walk-Ins for Interval|
|ctr|Float|No|Total Click through Rate for Interval|
|clicks|Int|No|Total Clicks for Interval|
|cpc|Float|No|Total Cost per Click for Interval|
|cpw|Float|No|Total Cost per Walk-in for Interval|
|cpm|Float|No|Total Cost per Milli for Interval|
|spend|Float|No|Total Spend for Interval|

**ConversionFence Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Conversion Fence Name|
|conversion_fence_id|Int|No|Geofence ID|
|walk_ins|Int|No|Total Walk-Ins for Interval|
|cpw|Float|No|Total Cost per Walk-in for Interval|
|spend|Float|No|Total Spend for Interval|

**Totals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|impressions|Int|No|Total Impressions for Interval|
|walk_ins|Int|No|Total Walk-Ins for Interval|
|ctr|Float|No|Total Click through Rate for Interval|
|clicks|Int|No|Total Clicks for Interval|
|cpc|Float|No|Total Cost per Click for Interval|
|cpw|Float|No|Total Cost per Walk-in for Interval|
|cpm|Float|No|Total Cost per Milli for Interval|
|spend|Float|No|Total Spend for Interval|

**Totals Per Interval Object**

This is an Interval object across all campaigns.

**AvailableGeofence Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|geofence_id|Int|No|Geofence ID|
|geofence_name|Int|No|Geofence Name|

**AvailableConversionFence Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|conversion_fence_id|Int|No|Conversion Fence ID|
|conversion_fence_name|Int|No|Conversion Fence Name|
