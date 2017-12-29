## Display Activity Report

### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/display_activity/[gmaid]?[query_params]
```

### Usage
Use GET to retrieve information for the Display Activity report for a given advertiser.

The data returned will include impressions, remarketing impressions, custom targeting impressions, clicks, spend and CPM values organized by campaign and campaign_cycle.

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
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_activity/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN \
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
                "ctr": 57.69                         // Click through rate
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
      "ctr": 57.69                          // Click through rate
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
          "campaign_cycle": "USA_1",        // Identifier for cycle
          "start_date": "2016-10-10",          // Start date of cycle
          "end_date": "2016-10-14",            // End date of cycle
        }
      ]
    }
  ],
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
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
        "intervals": [                   // Data for specified interval
          {
            "start_date": "2016-10-10",          // Start date of interval
            "impressions": 78,                   // Impressions for interval
            "remarketing_impressions": 59,       // Remarketing impressions for interval
            "custom_targeting_impressions": 65,  // Custom targeting impressions for interval
            "clicks": 45,                        // Clicks for interval
            "spend": 18,                         // Spend for interval
            "cpm": 3.05,                         // CPM for interval
            "ctr" : 57.69                        // Click through rate
            
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
      "ctr": 57.69                          // Click through rate
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
          "campaign_cycle": "USA_1",        // Identifier for cycle
          "start_date": "2016-10-10",          // Start date of cycle
          "end_date": "2016-10-14",            // End date of cycle
        }
      ]
    }
  ],
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
}
```

> Example Response (with cycles):

```json
{
  "report_type": "display_activity",
  "report_date": "2017-01-24",
  "earliest_date_available": "2016-01-01",
  "start_date": "2017-01-11",
  "end_date": "2017-01-13",
  "time_zone": "America/Los_Angeles",
  "interval_size": "day",
  "currency": "USD",
  "report_data": {
    "campaigns": [
      {
        "name": "Drain Cleaning",
        "global_master_campaign_id": "USA_1",
        "start_date": "2016-11-14",
        "end_date": "2017-01-13",
        "type": "display",
        "status": "running",
        "intervals": [
          {
            "start_date": "2017-01-11",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          }
        ]
      },
      {
        "name": "Stopped Campaign",
        "global_master_campaign_id": "USA_3",
        "start_date": "2016-11-14",
        "end_date": "2017-01-13",
        "type": "display",
        "status": "stopped",
        "intervals": [
          {
            "start_date": "2017-01-11",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          }
        ]
      },
      {
        "name": "Ended Campaign",
        "global_master_campaign_id": "USA_4",
        "start_date": "2016-11-14",
        "end_date": "2017-01-13",
        "type": "display",
        "status": "ended",
        "intervals": [
          {
            "start_date": "2017-01-11",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69
          }
        ]
      }
    ],
    "totals": {
      "impressions": 1800,
      "remarketing_impressions": 540,
      "custom_targeting_impressions": 1260,
      "clicks": 270,
      "spend": 679.5,
      "cpm": 377.5,
      "ctr": 57.69
    },
    "totals_per_interval": [
      {
        "start_date": "2017-01-11",
        "impressions": 600,
        "remarketing_impressions": 180,
        "custom_targeting_impressions": 420,
        "clicks": 90,
        "spend": 226.5,
        "cpm": 377.5,
        "ctr": 57.69
      },
      {
        "start_date": "2017-01-12",
        "impressions": 600,
        "remarketing_impressions": 180,
        "custom_targeting_impressions": 420,
        "clicks": 90,
        "spend": 226.5,
        "cpm": 377.5,
        "ctr": 57.69
      },
      {
        "start_date": "2017-01-13",
        "impressions": 600,
        "remarketing_impressions": 180,
        "custom_targeting_impressions": 420,
        "clicks": 90,
        "spend": 226.5,
        "cpm": 377.5,
        "ctr": 57.69
      }
    ]
  },
  "global_master_advertiser_id": "USA_123",
  "location": "https://api.reachlocalservices.com/client_reports/display_activity/USA_123?start_date=2017-01-11&end_date=2017-01-13",
  "available_campaigns": [
    {
      "name": "Drain Cleaning",
      "global_master_campaign_id": "USA_1",
      "status": "running",
      "cycles": [
        {
          "campaign_cycle": "USA_10",
          "start_date": "2016-11-14",
          "end_date": "2016-12-14",
          "name": "Drain Cleaning"
        },
        {
          "campaign_cycle": "USA_11",
          "start_date": "2016-12-14",
          "end_date": "2017-01-13",
          "name": "Drain Cleaning"
        }
      ]
    },
    {
      "name": "Stopped Campaign",
      "global_master_campaign_id": "USA_3",
      "status": "stopped",
      "cycles": [
        {
          "campaign_cycle": "USA_30",
          "start_date": "2016-11-14",
          "end_date": "2016-12-14",
          "name": "Stopped Campaign"
        },
        {
          "campaign_cycle": "USA_31",
          "start_date": "2016-12-14",
          "end_date": "2017-01-13",
          "name": "Stopped Campaign"
        }
      ]
    },
    {
      "name": "Ended Campaign",
      "global_master_campaign_id": "USA_4",
      "status": "ended",
      "cycles": [
        {
          "campaign_cycle": "USA_40",
          "start_date": "2016-11-14",
          "end_date": "2016-12-14",
          "name": "Ended Campaign"
        },
        {
          "campaign_cycle": "USA_41",
          "start_date": "2016-12-14",
          "end_date": "2017-01-13",
          "name": "Ended Campaign"
        }
      ]
    }
  ],
  "data_import_status": {
    "DailyCampaignActivity": "2017-01-13T21:04:12.000Z",
    "Campaign": null
  }
}
```