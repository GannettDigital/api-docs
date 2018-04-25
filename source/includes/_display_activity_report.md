## Display Activity Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/display_activity/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the Display Activity report for a given advertiser.

The data returned will include impressions, remarketing impressions, custom targeting impressions, clicks, spend, CPM, walk-ins, and CPW values organized by campaign and campaign_cycle.

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
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true
```

> Response Description with Cycles

```javascript
{
  "report_type": "display_activity",        // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "interval_size": "day",                   // Interval Size ('day', 'calendar_week' or 'calendar_month')
  "currency": "USD",                        // Currency
  "report_data": {                          // Report details
    "campaigns": [                          // All data for campaigns
      {
        "name": "Ad_Campaign_1",             // Campaign name
        "global_master_campaign_id": "USA_1",// Identifier for campaign
        "start_date": "2016-07-10",          // Start date for campaign
        "end_date": "2016-10-24",            // End date for campaign
        "type": "display",                   // Type of campaign
        "cycles": [                          // Data for cycles
          {
            "campaign_cycle": "USA_1",       // Identifier for cycle
            "start_date": "2016-10-10",      // Start date for cycle
            "end_date": "2016-10-14",        // End date for cycle
            "intervals": [                   // Data for specified interval
              {
                "start_date": "2016-10-10",          // Start date of interval
                "impressions": 78,                   // Impressions for interval
                "remarketing_impressions": 59,       // Remarketing impressions for interval
                "custom_targeting_impressions": 65,  // Custom targeting impressions for interval
                "clicks": 45,                        // Clicks for interval
                "spend": 18,                         // Spend for interval
                "cpm": 3.05,                         // CPM for interval
                "ctr": 57.69,                        // Click through rate
                "walk_ins": 1,                       // Walk-ins
                "cpw": 18.0                          // Cost per Walk-in
              },
            ]
          }
        ]
      }
    ],
    "totals": {                             // Total data
      "impressions": 78,                    // Total impressions
      "remarketing_impressions": 310,       // Total remarketing_impressions
      "custom_targeting_impressions": 45,   // Total custom_targeting_impressions
      "clicks": 85,                         // Total click events
      "spend": 18,                          // Total spend
      "cpm": 4.05,                          // Total CPM
      "walk_ins": 1,                        // Total Walk-ins
      "ctr": 57.69,                         // Click through rate
      "cpw": 18.0                           // Total Cost per Walk-in
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-10-10",         // Start date of interval
        "impressions": 78,                  // Total impressions for interval
        "remarketing_impressions": 310,     // Total remarketing impressions for interval
        "custom_targeting_impressions": 45, // Total custom targeting impressions for interval
        "clicks": 85,                       // Total clicks for interval
        "spend": 18,                        // Total spend for interval
        "cpm": 4.05.                        // Total cpm for interval
        "ctr": 57.69,                       // Click through rate
        "walk_ins": 1,                      // Total Walk-ins for interval
        "cpw": 52.37                        // Total Cost per Walk-ins for interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?campaign_cycle=ALL&global_master_campaign_id=USA_14&range=cycle",
  "available_campaigns": [                     // All campaigns for advertiser
    {
      "name": "Ad_Campaign_1",                 // Name of campaign
      "global_master_campaign_id": "USA_11",   // Identifier for campaign
      "status": "running",
      "cycles": [                              // All cycles for advertiser
        {
          "campaign_cycle": "USA_1",           // Identifier for cycle
          "start_date": "2016-10-10",          // Start date of cycle
          "end_date": "2016-10-14",            // End date of cycle
        }
      ]
    }
  ]
}
```
>  Response Description without Cycles

```javascript
{
  "report_type": "display_activity",        // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "interval_size": "day",                   // Interval Size ('day', 'calendar_week' or 'calendar_month')
  "currency": "USD",                        // Currency
  "report_data": {                          // Report details
    "campaigns": [                          // All data for campaigns
      {
        "name": "Ad_Campaign_1",             // Campaign name
        "global_master_campaign_id": "USA_1",// Identifier for campaign
        "start_date": "2016-07-10",          // Start date for campaign
        "end_date": "2016-10-24",            // End date for campaign
        "type": "display",                   // Type of campaign
        "intervals": [                       // Data for specified interval
          {
            "start_date": "2016-10-10",          // Start date of interval
            "impressions": 78,                   // Impressions for interval
            "remarketing_impressions": 59,       // Remarketing impressions for interval
            "custom_targeting_impressions": 65,  // Custom targeting impressions for interval
            "clicks": 45,                        // Clicks for interval
            "spend": 18,                         // Spend for interval
            "cpm": 3.05,                         // CPM for interval
            "ctr" : 57.69,                       // Click through rate
            "walk_ins": 1,                       // Walk-ins
            "cpw": 18.0                          // Cost per Walk-in
          },
        ]
      }
    ],
    "totals": {                             // Total data
      "impressions": 78,                    // Total impressions
      "remarketing_impressions": 310,       // Total remarketing_impressions
      "custom_targeting_impressions": 45,   // Total custom_targeting_impressions
      "clicks": 85,                         // Total click events
      "spend": 18,                          // Total spend
      "cpm": 4.05,                          // Total CPM
      "walk_ins": 1,                        // Total Walk-ins
      "ctr": 57.69,                         // Click through rate
      "cpw": 18.0                           // Total Cost per Walk-in
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-10-10",         // Start date of interval
        "impressions": 78,                  // Total impressions for interval
        "remarketing_impressions": 310,     // Total remarketing impressions for interval
        "custom_targeting_impressions": 45, // Total custom targeting impressions for interval
        "clicks": 85,                       // Total clicks for interval
        "spend": 18,                        // Total spend for interval
        "cpm": 4.05,                        // Total cpm for interval
        "ctr": 57.69                        // Click through rate
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?campaign_cycle=ALL&global_master_campaign_id=USA_14&range=cycle",
  "available_campaigns": [                     // All campaigns for advertiser
    {
      "name": "Ad_Campaign_1",                 // Name of campaign
      "global_master_campaign_id": "USA_11",   // Identifier for campaign
      "status": "running",
      "cycles": [                              // All cycles for advertiser
        {
          "campaign_cycle": "USA_1",           // Identifier for cycle
          "start_date": "2016-10-10",          // Start date of cycle
          "end_date": "2016-10-14",            // End date of cycle
        }
      ]
    }
  ]
}
```

> Example Response (without cycles):

```json
{
    "report_type": "display_activity",
    "report_date": "2018-03-29",
    "earliest_date_available": "2018-02-25",
    "start_date": "2018-03-09",
    "end_date": "2018-03-09",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "GeoFence I Bliss Orthodontics",
                "global_master_campaign_id": "USA_2270088",
                "start_date": "2017-11-28",
                "end_date": null,
                "type": "display",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2018-03-09",
                        "impressions": 2466,
                        "remarketing_impressions": 0,
                        "custom_targeting_impressions": 2466,
                        "clicks": 3,
                        "spend": 16.66,
                        "ctr": 0.12,
                        "cpm": 6.76,
                        "walk_ins": 1,
                        "cpw": 16.66
                    }
                ]
            },
            {
                "name": "Retargeting | Bliss Orthodontics | Orthodontics",
                "global_master_campaign_id": "USA_1880940",
                "start_date": "2017-12-16",
                "end_date": null,
                "type": "display",
                "status": "running",
                "intervals": [
                    {
                        "start_date": "2018-03-09",
                        "impressions": 4207,
                        "remarketing_impressions": 23,
                        "custom_targeting_impressions": 4184,
                        "clicks": 12,
                        "spend": 17.2,
                        "ctr": 0.29,
                        "cpm": 4.09,
                        "walk_ins": 0,
                        "cpw": 0
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 6673,
            "remarketing_impressions": 23,
            "custom_targeting_impressions": 6650,
            "clicks": 15,
            "spend": 33.86,
            "cpm": 5.07,
            "walk_ins": 1,
            "ctr": 0.22,
            "cpw": 33.86
        },
        "totals_per_interval": [
            {
                "start_date": "2018-03-09",
                "impressions": 6673,
                "remarketing_impressions": 23,
                "custom_targeting_impressions": 6650,
                "clicks": 15,
                "spend": 33.86,
                "ctr": 0.22,
                "cpm": 5.07,
                "walk_ins": 1,
                "cpw": 33.86
            }
        ]
    },
    "global_master_advertiser_id": "USA_148363",
    "location": "https://api.reachlocalservices.com/client_reports/display_activity/USA_148363?end_date=2018-03-09&start_date=2018-03-09",
    "available_campaigns": [
        {
            "name": "GeoFence I Bliss Orthodontics",
            "global_master_campaign_id": "USA_2270088",
            "status": "running",
            "cycles": [
                {
                    "campaign_cycle": "USA_2406928",
                    "start_date": "2017-11-28",
                    "end_date": "2017-12-28",
                    "name": "GeoFence I Bliss Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2428675",
                    "start_date": "2017-12-28",
                    "end_date": "2018-01-28",
                    "name": "GeoFence I Bliss Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2450043",
                    "start_date": "2018-01-28",
                    "end_date": "2018-02-27",
                    "name": "GeoFence I Bliss Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2473076",
                    "start_date": "2018-02-27",
                    "end_date": null,
                    "name": "GeoFence I Bliss Orthodontics"
                }
            ]
        },
        {
            "name": "Retargeting | Bliss Orthodontics | Orthodontics",
            "global_master_campaign_id": "USA_1880940",
            "status": "running",
            "cycles": [
                {
                    "campaign_cycle": "USA_2419473",
                    "start_date": "2017-12-16",
                    "end_date": "2018-01-16",
                    "name": "Retargeting | Bliss Orthodontics | Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2442711",
                    "start_date": "2018-01-16",
                    "end_date": "2018-02-17",
                    "name": "Retargeting | Bliss Orthodontics | Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2464872",
                    "start_date": "2018-02-17",
                    "end_date": "2018-03-20",
                    "name": "Retargeting | Bliss Orthodontics | Orthodontics"
                },
                {
                    "campaign_cycle": "USA_2487638",
                    "start_date": "2018-03-20",
                    "end_date": null,
                    "name": "Retargeting | Bliss Orthodontics | Orthodontics"
                }
            ]
        }
    ]
}
```