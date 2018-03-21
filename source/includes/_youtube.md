## YouTube Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/youtube/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the YouTube report for a given advertiser.

The data returned will include impressions, views, clicks, view-through rate, click-through rate, cost per view, and eCPM organized by campaign,
and also broken out by age, gender, and device type.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/youtube/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/youtube/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Response Description

```javascript
{
  "report_type": "youtube",                             // Report Type
  "report_date": "2017-07-26",                          // Date Report was Run
  "earliest_date_available": "2017-04-30",              // Earliest Date Data is Available
  "start_date": "2017-05-01",                           // Start Date of Report
  "end_date": "2017-05-02",                             // End Date of Report
  "time_zone": "America/Los_Angeles",                   // Time Zone of Report
  "interval_size": "day",                               // Interval Size Report is Broken Into
  "currency": "USD",                                    // Currenty of Report
  "report_data": {
    "campaigns": [
      {
        "name": "Two Nine North PPC",                   // Campaign Name
        "global_master_campaign_id": "USA_2134071",     // Global Master Campaign ID
        "start_date": "2016-10-05",                     // Start Date of Campaign
        "end_date": "2017-07-17",                       // End Date of Campaign
        "type": "display",                              // Type of Campaign
        "status": "ended",                              // Campaign Status
        "intervals": [
          {
            "start_date": "2017-05-01",                 // Start Date For Interval
            "impressions": 1410,                        // Impressions For Interval
            "views": 4,                                 // Views For Interval
            "clicks": 55,                               // Clicks For Interval
            "spend": 100.37,                            // Spend For Interval
            "vtr": 3.9,                                 // View-through Rate For Interval
            "ctr": 1.82,                                // Click-through Rate For Interval
            "cpv": 2.0,                                 // Cost Per View For Interval
            "eCPM": 1.5                                 // Effective Cost Per Mille
          }
        ]
      }
    ],
    "impression_breakdowns": {                          // Impression Breakdowns
      "age_breakdowns": {                               // Age Breakdowns of Impressions
        "18-24": 150,                                   // Age 18-24
        "25-34": 150,                                   // Age 25-34
        "35-44": 150,                                   // Age 35-44
        "45-54": 150,                                   // Age 45-54
        "55-64": 150,                                   // Age 55-64
        "65+": 150,                                     // Age 65+
        "total": 900                                    // Total Impressions
      },
      "gender_breakdowns": {                            // Gender Breakdowns of Impressions
        "male": {
          "total": 400,                                 // Total Male Impressions
          "percent": 40.0                               // Percent Male Impressions
        },
        "female": {
          "total": 400,                                 // Total Female Impressions
          "percent": 40.0                               // Percent Female Impressions
        },
        "unknown": {
          "total": 200,                                 // Total Gender Not Reported Impressions
          "percent": 20.0                               // Percent Gender Not Reported Impressions
        },
        "total": 1000                                   // Total Gender Impressions
      },
      "device_breakdowns": {                            // Device Breakdowns of Impressions
        "desktop": {
          "total": 400,                                 // Total Desktop Impressions
          "percent": 40.0                               // Percent Desktop Impressions
        },
        "mobile": {
          "total": 400,                                 // Total Mobile Impressions
          "percent": 40.0                               // Percent Desktop Impressions
        },
        "tablet": {
          "total": 200,                                 // Total Tablet Impressions
          "percent": 20.0                               // Percent Tablet Impressions
        }
      }
    },
    "view_breakdowns": {                                // View Breakdowns
      "age_breakdowns": {                               // Age Breakdowns of Views
        "18-24": 150,                                   // Age 18-24
        "25-34": 150,                                   // Age 25-34
        "35-44": 150,                                   // Age 35-44
        "45-54": 150,                                   // Age 45-54
        "55-64": 150,                                   // Age 55-64
        "65+": 150,                                     // Age 65+
        "total": 900                                    // Total Views
      },
      "gender_breakdowns": {                            // Gender Breakdowns of Views
        "male": {
          "total": 400,                                 // Total Male Views
          "percent": 40.0                               // Percent Male Views
        },
        "female": {
          "total": 400,                                 // Total Female Views
          "percent": 40.0                               // Percent Female Views
        },
        "unknown": {
          "total": 200,                                 // Total Gender Not Reported Views
          "percent": 20.0                               // Percent Gender Not Reported Views
        },
        "total": 1000                                   // Total Gender Views
      },
      "device_breakdowns": {                            // Device Breakdowns of Views
        "desktop": {
          "total": 400,                                 // Total Desktop Views
          "percent": 40.0                               // Percent Desktop Views
        },
        "mobile": {
          "total": 400,                                 // Total Mobile Views
          "percent": 40.0                               // Percent Desktop Views
        },
        "tablet": {
          "total": 200,                                 // Total Tablet Views
          "percent": 20.0                               // Percent Tablet Views
        }
      }
    },
    "click_breakdowns": {                               // Click Breakdowns
      "age_breakdowns": {                               // Age Breakdowns of Clicks
        "18-24": 150,                                   // Age 18-24
        "25-34": 150,                                   // Age 25-34
        "35-44": 150,                                   // Age 35-44
        "45-54": 150,                                   // Age 45-54
        "55-64": 150,                                   // Age 55-64
        "65+": 150,                                     // Age 65+
        "total": 900                                    // Total Clicks
      },
      "gender_breakdowns": {                            // Gender Breakdowns of Clicks
        "male": {
          "total": 400,                                 // Total Male Clicks
          "percent": 40.0                               // Percent Male Clicks
        },
        "female": {
          "total": 400,                                 // Total Female Clicks
          "percent": 40.0                               // Percent Female Clicks
        },
        "unknown": {
          "total": 200,                                 // Total Gender Not Reported Clicks
          "percent": 20.0                               // Percent Gender Not Reported Clicks
        },
        "total": 1000                                   // Total Gender Clicks
      },
      "device_breakdowns": {                            // Device Breakdowns of Clicks
        "desktop": {
          "total": 400,                                 // Total Desktop Clicks
          "percent": 40.0                               // Percent Desktop Clicks
        },
        "mobile": {
          "total": 400,                                 // Total Mobile Clicks
          "percent": 40.0                               // Percent Desktop Clicks
        },
        "tablet": {
          "total": 200,                                 // Total Tablet Clicks
          "percent": 20.0                               // Percent Tablet Clicks
        }
      }
    },
    "totals": {                                         // Overall Totals for Report
      "impressions": 1410,                              // Overall Impressions
      "views": 4,                                       // Overall Views
      "clicks": 55,                                     // Overall Clicks
      "spend": 100.37,                                  // Overall Spend
      "vtr": 3.9,                                       // Overall View-through Rate
      "ctr": 1.82,                                      // Overall Click-through Rate
      "cpv": 2.0,                                       // Overall Cost per View
      "eCPM": 1.5                                       // Overall Effective Cost Per Mille
    },
    "totals_per_interval": [                            // Overall Totals Per Interval
      {
        "start_date": "2017-05-01",                     // Start Date of Interval
        "impressions": 1410,                            // Impressions for Interval
        "views": 4,                                     // Views for Interval
        "clicks": 55,                                   // Clicks for Interval
        "spend": 100.37,                                // Spend for Interval
        "vtr": 3.9,                                     // View-through Rate for Interval
        "ctr": 1.82,                                    // Click-through Rate for Interval
        "cpv": 2.0,                                     // Cost Per View for Interval
        "eCPM": 1.5                                     // Effective Cost Per Mille for Interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_187198",          // Global Master Advertiser ID
  "location": "https://api.reachlocalservices.com/client_reports/youtube/USA_187198?end_date=2017-05-02&start_date=2017-05-01"
}
```
