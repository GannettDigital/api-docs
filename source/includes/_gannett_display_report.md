## Gannett Display Report

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/gannett_display/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve information for the Gannett Display report for a given advertiser.

The report will contains impressions, clicks, and ctr broken down by day or month.
It will also contain the overall universal interaction, universal interaction time, hover, and attention quality for the date range of the report.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function | Required|Default|
|---|---|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.| `REQUIRED`||
|`end_date`|Restricts the results to those ocurring on or before this date.| `REQUIRED`||
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns| `OPTIONAL`|all gmcids for advertiser|
|`interval_size`|`calendar_month`, `calendar_week` or `day`| `OPTIONAL`|`day`|

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```
###### Retrieve available data for the current year broken down by month
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display/USA_105569?start_date=2017-01-01&end_date=2017-10-04&interval_size=calendar_month"
```
###### Retrieve data for a specific campaign
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/gannett_display/USA_105569?global_master_campaign_id[]=USA_-1&start_date=2016-12-01&end_date=2016-12-31"
```

#### Response description prior to or including 2019-12-31
```javascript
{
    "report_type": "gannett_display",                       // Type of Report
    "report_date": "2017-10-05",                            // Date report is run
    "start_date": "2017-09-01",                             // Start Date for Report Data
    "end_date": "2017-10-03",                               // End Date for Report Data
    "time_zone": "America/Los_Angeles",                     // Time Zone
    "interval_size": "day",                                 // Report Break-down (calendar_month, calendar_week, day)
    "global_master_advertiser_id": "USA_999999",            // Global Master Advertiser ID
    "report_data": {
        "campaigns": [
            {
                "name": "C1531_CENTER CARE DENTAL GROUP",   // Campaign Name
                "global_master_campaign_id": "USA_-1",      // Global Master Campaign ID
                "start_date": "2017-09-01",                 // When the Campaign Started
                "end_date": null,                           // When the Campaign Ended
                "type": "gannett_display",                  // Type of Campaign
                "intervals": [
                    {
                        "start_date": "2017-10-01",         // Interval Start Date
                        "impressions": 5945,                // Impressions for Interval
                        "clicks": 8,                        // Clicks for Interval
                        "ctr": 0.13                         // Click Through Rate for Interval
                    },
                    {
                        "start_date": "2017-10-02",
                        "impressions": 6876,
                        "clicks": 10,
                        "ctr": 0.15
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 12821,                           // Total impressions for report
            "clicks": 18,                                   // Total Clicks for report
            "ctr": 0.14                                     // Total Click Through Rate for report
        },
        "totals_per_interval": [
            {
                "start_date": "2017-10-01",                 // Total for interval (for all campaigns)
                "impressions": 5945,                        // Total impressions for interval (for all campaigns)
                "clicks": 8,                                // Total clicks for interval (for all campaigns)
                "ctr": 0.13                                 // Total ctr for interval (for all campaigns)
            },
            {
                "start_date": "2017-10-02",
                "impressions": 6876,
                "clicks": 10,
                "ctr": 0.15
            }
        ]
    }
}
```

#### Response description after 2019-12-31
```javascript
{
    "report_type": "gannett_display",                       // Type of Report
    "report_date": "2020-07-01",                            // Date report is run
    "start_date": "2020-06-01",                             // Start Date for Report Data
    "end_date": "2020-06-30",                               // End Date for Report Data
    "time_zone": "America/Los_Angeles",                     // Time Zone
    "interval_size": "day",                                 // Report Break-down (calendar_month, calendar_week, day)
    "global_master_advertiser_id": "USA_999999",            // Global Master Advertiser ID
    "report_data": {
        "campaigns": [
            {
                "name": "C1531_CENTER CARE DENTAL GROUP",   // Campaign Name
                "global_master_campaign_id": "USA_-1",      // Global Master Campaign ID
                "start_date": "2017-09-01",                 // When the Campaign Started
                "end_date": null,                           // When the Campaign Ended
                "type": "gannett_display",                  // Type of Campaign
                "intervals": [
                    {
                        "start_date": "2017-10-01",         // Interval Start Date
                        "impressions": 5945,                // Impressions for Interval
                        "clicks": 8,                        // Clicks for Interval
                        "ctr": 0.13                         // Click Through Rate for Interval
                    },
                    {
                        "start_date": "2017-10-02",
                        "impressions": 6876,
                        "clicks": 10,
                        "ctr": 0.15
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 12821,                           // Total impressions for report
            "clicks": 18,                                   // Total Clicks for report
            "ctr": 0.14                                     // Total Click Through Rate for report
        },
        "totals_per_interval": [
            {
                "start_date": "2017-10-01",                 // Total for interval (for all campaigns)
                "impressions": 5945,                        // Total impressions for interval (for all campaigns)
                "clicks": 8,                                // Total clicks for interval (for all campaigns)
                "ctr": 0.13                                 // Total ctr for interval (for all campaigns)
            },
            {
                "start_date": "2017-10-02",
                "impressions": 6876,
                "clicks": 10,
                "ctr": 0.15
            }
        ]
    }
}
```
