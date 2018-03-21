## Google Search Report

### Resource Overview

| Method | URI Format |
|---|---|
|GET| /client_reports/google_search_activity/[gmaid]?[query_params]|

### Usage
Use GET to retrieve the Google Search Activity Compliance report for a given advertiser.

The data returned will include impressions, clicks, and media cost values organized by campaign and campaign_cycle.

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
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/USA_105569?campaign_cycle=USA_100"
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/google_search_activity/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_search_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

> Response Description

```javascript
{
  "report_type": "google_search_activity",  // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "interval_size": "day",                   // Interval Size ('day', 'calendar_week' or 'calendar_month')
  "currency": "USD",                        // Currency for Advertiser
  "report_data": {                          // Report details
    "campaigns": [                          // All data for campaigns
      {
        "name": "Ad_Campaign_1",            // Campaign name
        "global_master_campaign_id": "USA_1",// Identifier for campaign
        "start_date": "2016-07-10",         // Start date for campaign
        "end_date": "2016-10-24",           // End date for campaign
        "type": "Search",                   // Type of campaign
        "intervals": [                      // Data for specified interval
          {
            "start_date": "2016-10-10",     // Start date of interval
            "impressions": 78,              // Impressions for interval
            "clicks": 45,                   // Clicks for interval
            "media_cost": 57.69             // Click through rate for interval
          },
        ]
      }
    ],
    "totals": {                             // Total data
      "impressions": 78,                    // Total impressions
      "clicks": 45,                         // Total click events
      "media_cost": 57.69                   // Total click through rate
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-12-15",         // Start date of interval
        "impressions": 600,                 // Total impressions for interval
        "clicks": 90,                       // Total clicks for interval
        "media_cost": 15                    // Total click through rate for interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/google_search_activity/USA_105569?campaign_cycle=45&global_master_campaign_id=USA_14&range=cycle",
  "available_campaigns": [                  // All campaigns for advertiser
    {
      "name": "Ad_Campaign_1",              // Name of campaign
      "global_master_campaign_id": "USA_11",// Identifier for campaign
      "status": "running",                  // Status for campaign
      "cycles": [                           // All cycles for advertiser
        {
          "campaign_cycle": USA_100,        // Identifier for cycle
          "start_date": "2016-10-10",       // Start date of cycle
          "end_date": "2016-10-14",         // End date of cycle
          "name": "Ad_Campaign_1"           // Name of cycle
        }
      ]
    }
  ]
}

```

> Example Response (with cycles):

```json
{
  "report_type": "google_search_activity",
  "report_date": "2017-07-26",
  "earliest_date_available": "2017-04-30",
  "start_date": "2017-05-01",
  "end_date": "2017-05-02",
  "time_zone": "America/Los_Angeles",
  "interval_size": "day",
  "currency": "USD",
  "report_data": {
    "campaigns": [
      {
        "name": "Two Nine North PPC",
        "global_master_campaign_id": "USA_2134071",
        "start_date": "2016-10-05",
        "end_date": "2017-07-17",
        "type": "search",
        "status": "ended",
        "intervals": [
          {
            "start_date": "2017-05-01",
            "impressions": 1410,
            "clicks": 55,
            "media_cost": 100.37
          },
          {
            "start_date": "2017-05-02",
            "impressions": 1156,
            "clicks": 54,
            "media_cost": 88.83
          }
        ]
      }
    ],
    "totals": {
      "impressions": 2566,
      "clicks": 109,
      "media_cost": 4.25
    },
    "totals_per_interval": [
      {
        "start_date": "2017-05-01",
        "impressions": 1410,
        "clicks": 55,
        "media_cost": 100.37
      },
      {
        "start_date": "2017-05-02",
        "impressions": 1156,
        "clicks": 54,
        "media_cost": 88.83
      }
    ]
  },
  "global_master_advertiser_id": "USA_187198",
  "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/google_search_activity/USA_187198?end_date=2017-05-02&start_date=2017-05-01",
  "available_campaigns": [
    {
      "name": "Two Nine North PPC",
      "global_master_campaign_id": "USA_2134071",
      "status": "ended",
      "cycles": [
        {
          "campaign_cycle": "USA_2134071",
          "start_date": "2016-10-05",
          "end_date": "2016-10-10",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2138911",
          "start_date": "2016-10-10",
          "end_date": "2016-11-08",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2156076",
          "start_date": "2016-11-09",
          "end_date": "2016-12-07",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2173471",
          "start_date": "2016-12-10",
          "end_date": "2017-01-09",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2190204",
          "start_date": "2017-01-09",
          "end_date": "2017-02-14",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2191481",
          "start_date": "2017-01-12",
          "end_date": "2017-06-16",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2208246",
          "start_date": "2017-02-14",
          "end_date": "2017-03-17",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2227384",
          "start_date": "2017-03-17",
          "end_date": "2017-04-18",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2247602",
          "start_date": "2017-04-18",
          "end_date": "2017-05-20",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2268974",
          "start_date": "2017-05-20",
          "end_date": "2017-06-15",
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2289593",
          "start_date": "2017-06-16",
          "end_date": null,
          "name": "Two Nine North PPC"
        },
        {
          "campaign_cycle": "USA_2290678",
          "start_date": "2017-06-19",
          "end_date": "2017-07-17",
          "name": "Two Nine North PPC"
        }
      ]
    }
  ]
}

```
