## GeoFence Summary Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/geofence_summary/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the GeoFence Summary Report for a given advertiser.

The data returned will include impressions, walk_ins, ctr, clicks, cpc, cpw, cpm, and spend organized by campaign
and broken down by geofence and conversion_fence.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma seperated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma seperated string. Ex: campaign_status[]=running,stopped|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`geofence[]`| Restrict results to the given geofence ids.  Geofence ids can be found in the available_geofences section. This should be a comma seperated string. Ex: geofence[]=1,2|
|`conversion_fence[]`| Restrict results to the given conversion fence ids.  Conversion Fence ids can be found in the available_conversion_fences section. This should be a comma seperated string. Ex: conversion_fence[]=1,2|

To specify a date range:

   - Specify start_date and end_date.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/geofence_summary/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/USA_105569?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for specific geofences and conversion_fences

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/geofence_summary/USA_105569?&goefence[]=1,2&conversion_fence[]=1,2&start_date=2016-10-01&end_date=2016-12-31
```

> Response Description

```javascript
{
    "report_type": "geofence_summary",                                  // Report Type
    "report_date": "2018-05-14",                                        // Date Report was Run
    "earliest_date_available": "2018-03-29",                            // Earliest Date Data is Available
    "start_date": "2018-04-28",                                         // Start Date of Report
    "end_date": "2018-04-28",                                           // End Date of Report
    "time_zone": "America/Los_Angeles",                                 // Time Zone of Report
    "interval_size": "day",                                             // Interval Size Report is Broken Into
    "currency": "USD",                                                  // Currenty of Report
    "global_master_advertiser_id": "USA_185490",                        // Global Master Advertiser ID for Report
    "report_data": {
        "campaigns": [
            {
                "name": "Retargeting | Test",                           // Campaign Name
                "global_master_campaign_id": "USA_2062049",             // Global Master Campaign ID
                "start_date": "2018-03-03",                             // Start Date of Campaign
                "end_date": null,                                       // End Date of Campaign
                "type": "display",                                      // Type of Campaign
                "intervals": [  
                    {
                        "start_date": "2018-04-28",                     // Start Date for Interval
                        "impressions": 3549,                            // Impressions for Interval
                        "walk_ins": 0,                                  // Walk-ins for Interval
                        "ctr": 0.2,                                     // Click-through Rate For Interval
                        "clicks": 7,                                    // Clicks for Interval
                        "cpc": 2.49,                                    // Cost Per Click for Interval
                        "cpw": 0,                                       // Cost Per Walk-in For Interval
                        "cpm": 4.92,                                    // CPM for Interval
                        "spend": 17.45,                                 // Spend for Interval
                        "geofences": [                                  // GeoFences for Interval
                            {
                                "impressions": 3549,                    // Impressions for GeoFence
                                "walk_ins": 0,                          // Walk-ins for GeoFence
                                "ctr": 0.2,                             // Click-through Rate For GeoFence
                                "name": "Larry H. Miller Toyota",       // GeoFence Name
                                "geofence_id": 7396,                    // GeoFence ID
                                "clicks": 7,                            // Clicks for GeoFence
                                "cpc": 2.49,                            // Cost Per Click for GeoFence
                                "cpw": 0,                               // Cost Per Walk-in for GeoFence
                                "cpm": 4.92,                            // CPM for GeoFence
                                "spend": 17.45,                         // Spend for GeoFence
                                "conversion_fences": [                  // Conversion Fence Breakdown of GeoFence
                                    {
                                        "name": "Sample",               // Conversion Fence Name
                                        "conversion_fence_id": 1744,    // Conversion Fence ID
                                        "walk_ins": 0,                  // Walk-ins for Conversion Fence
                                        "cpw": 0,                       // Cost Per Walk-in for Conversion Fence
                                        "spend": 17.45                  // Spend for Conversion Fence
                                    }
                                ]
                            },
                            {
                                "impressions": 7137,
                                "walk_ins": 0,
                                "ctr": 0.07,
                                "name": "Miller Toyota of Anaheim",
                                "geofence_id": 11511,
                                "clicks": 5,
                                "cpc": 6.99,
                                "cpw": 0,
                                "cpm": 4.9,
                                "spend": 34.96,
                                "conversion_fences": [
                                    {
                                        "name": "Sample",
                                        "conversion_fence_id": 1744,
                                        "walk_ins": 0,
                                        "cpw": 0,
                                        "spend": 34.96
                                    }
                                ]
                            },
                            {
                                "impressions": 9859,
                                "walk_ins": 0,
                                "ctr": 0.31,
                                "name": "Crown Toyota",
                                "geofence_id": 12785,
                                "clicks": 31,
                                "cpc": 1.58,
                                "cpw": 0,
                                "cpm": 4.98,
                                "spend": 49.11,
                                "conversion_fences": [
                                    {
                                        "name": "None",
                                        "conversion_fence_id": 1744,
                                        "walk_ins": 0,
                                        "cpw": 0,
                                        "spend": 49.11
                                    }
                                ]
                            },
                            {
                                "impressions": 5402,
                                "walk_ins": 0,
                                "ctr": 0.26,
                                "name": "Tustin Toyota",
                                "geofence_id": 17926,
                                "clicks": 14,
                                "cpc": 1.87,
                                "cpw": 0,
                                "cpm": 4.84,
                                "spend": 26.13,
                                "conversion_fences": [
                                    {
                                        "name": "None",
                                        "conversion_fence_id": 1744,
                                        "walk_ins": 0,
                                        "cpw": 0,
                                        "spend": 26.13
                                    }
                                ]
                            }
                        ],
                        "conversion_fences": [                              // Conversion Fences for Interval
                            {
                                "name": "Sample",                     
                                "conversion_fence_id": 1744,                // Conversion Fence Name
                                "walk_ins": 0,                              // Walk-ins for Conversion Fence
                                "cpw": 0,                                   // Cost Per Walk-in for Conversion Fence
                                "geofences": [                              // GeoFences for Conversion Fence
                                    {
                                        "name": "Larry H. Miller Toyota",   // GeoFence Name
                                        "geofence_id": 7396,                // GeoFence ID
                                        "cpw": 0,                           // Cost Per Walk-in for GeoFence
                                        "walk_ins": 0                       // Walk-ins for GeoFence for Conversion Fence
                                    },
                                    {
                                        "name": "Miller Toyota of Anaheim",
                                        "geofence_id": 11511,
                                        "cpw": 0,
                                        "walk_ins": 0
                                    },
                                    {
                                        "name": "Crown Toyota",
                                        "geofence_id": 12785,
                                        "cpw": 0,
                                        "walk_ins": 0
                                    },
                                    {
                                        "name": "Tustin Toyota",
                                        "geofence_id": 17926,
                                        "cpw": 0,
                                        "walk_ins": 0
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "totals_per_interval": [                                        // Overall Totals Per Interval
            {
                "start_date": "2018-04-28",                             // Start Date of Interval
                "impressions": 25947,                                   // Impressions for Interval
                "walk_ins": 0,                                          // Walk-ins for Interval
                "ctr": 0.22,                                            // Click-through Rate for Interval
                "clicks": 57,                                           // Clicks for Interval
                "cpc": 2.24,                                            // Cost Per Click for Interval
                "cpw": 0,                                               // Cost Per Walk-in for Interval
                "cpm": 4.92,                                            // CPM for Interval
                "spend": 127.64                                         // Spend for Interval
            }
        ],
        "totals": {                                                     // Overall Totals for Report
            "impressions": 25947,                                       // Overall Impressions
            "walk_ins": 0,                                              // Overall Walk-ins
            "ctr": 0.22,                                                // Overall Click-through Rate
            "clicks": 57,                                               // Overall Clicks
            "cpc": 2.24,                                                // Overall Cost Per Click
            "cpw": 0,                                                   // Overall Cost Per Walk-in
            "cpm": 4.92,                                                // Overall CPM
            "spend": 127.64                                             // Overall Spend
        },
        "available_geofences": [                                        // GeoFences Available for Report
            {
                "geofence_id": 7396,                                    // GeoFence ID
                "geofence_name": "Larry H. Miller Toyota"               // GeoFence Name
            },
            {
                "geofence_id": 11511,
                "geofence_name": "Miller Toyota of Anaheim"
            },
            {
                "geofence_id": 12785,
                "geofence_name": "Crown Toyota"
            },
            {
                "geofence_id": 17926,
                "geofence_name": "Tustin Toyota"
            }
        ],
        "available_conversion_fences": [                                // Conversion Fences Available
            {
                "conversion_fence_id": 1744,                            // Conversion Fence ID
                "conversion_fence_name": "Sample"                       // Conversion Fence Name
            }
        ]
    }
}
```
