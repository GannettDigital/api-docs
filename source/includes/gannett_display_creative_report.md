## Gannett Display Creative Report

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/gannett_display_creative/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve information for the Gannett Display Creative report for a given advertiser.

The report will contains impressions, clicks, and ctr broken down by day or month, line_item, and creative.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function | Required|Default|
|---|---|---|---|
|`start_date`|Restricts the results to those occurring on or after this date.| `REQUIRED`||
|`end_date`|Restricts the results to those occurring on or before this date.| `REQUIRED`||
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns| `OPTIONAL`|all gmcids for advertiser|
|`interval_size`|`calendar_month`, `calendar_week` or `day`| `OPTIONAL`|`day`|
|`platforms`|Restricts results to one or more specific platforms|`OPTIONAL`|all platforms|

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display_creative/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```
###### Retrieve available data for the current year broken down by month
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display_creative/USA_105569?start_date=2017-01-01&end_date=2017-10-04&interval_size=calendar_month"
```
###### Retrieve data for a specific campaign
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display_creative/USA_105569?global_master_campaign_id[]=USA_-1&start_date=2016-12-01&end_date=2016-12-31"
```

###### Retrieve data for a specific platform
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display_creative/USA_105569?start_date=2016-12-01&end_date=2016-12-31&platforms[]=Local.com
```

#### Response Description
```javascript
{
    "report_type": "gannett_display_creative",                                          // Report Type
    "report_date": "2017-10-23",                                                        // Date Report was Ran
    "start_date": "2017-10-08",                                                         // Start Date of Report
    "end_date": "2017-10-08",                                                           // End Date of Report
    "time_zone": "America/Los_Angeles",                                                 // Time Zone
    "interval_size": "day",
    "global_master_advertiser_id": "USA_9866618",                                       // Global Master Advertiser ID
    "report_data": {
        "campaigns": [
            {
                "name": "C1264_NDN0001023_SHARK SHOOTOUT CHARITIES  SPON_naplesnews.com", // Campaign Name
                "global_master_campaign_id": "USA_-5353",                                 // Global Master Campaign ID
                "start_date": "2017-10-20",                                               // Start Date of Campaign
                "end_date": null,                                                         // End Date of Campaign
                "type": "gannett_display",                                                // Campaign Type
                "intervals": [
                    {
                        "start_date": "2017-10-08",                                       // Start Date of Interval
                        "line_item": [
                            {
                                "name": "fl-naples-cp-C1264: ROS (300x250 & 320x50",      // Line Item Name
                                "creatives": [
                                    {
                                        "name": "SS2017_728x90_092217",                   // Creative Name
                                        "platform": "Local.com",                          // Campaign Platform
                                        "targeting_details": "n/a",                       // Unavailable
                                        "impressions": 2012,                              // Impressions for Interval
                                        "clicks": 1,                                      // Clicks for Interval
                                        "ctr": 0.05                                       // Click Through Rate for Interval
                                    },
                                    {
                                        "name": "SS2017_300x250_092217",
                                        "platform": "Local.com",
                                        "targeting_details": "n/a",
                                        "impressions": 6456,
                                        "clicks": 22,
                                        "ctr": 0.34
                                    },
                                    {
                                        "name": "SS2017_320x50_092217",
                                        "platform": "Local.com",
                                        "targeting_details": "n/a",
                                        "impressions": 499,
                                        "clicks": 0,
                                        "ctr": 0
                                    },
                                    {
                                        "name": "SS2017_300x600_092217",
                                        "platform": "Local.com",
                                        "targeting_details": "n/a",
                                        "impressions": 35,
                                        "clicks": 0,
                                        "ctr": 0
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "totals_per_interval": [                                                        //Totals for the Interval
            {
                "start_date": "2017-10-08",
                "impressions": 9002,
                "clicks": 23,
                "ctr": 0.26
            }
        ],
        "totals": {
            "impressions": 9002,
            "clicks": 23,
            "ctr": 0.26
        }
    }
}
```
