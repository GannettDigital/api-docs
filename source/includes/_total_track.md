## TotalTrack Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/total_track/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the TotalTrack report for a given advertiser.

The data returned will include leads, clicks, calls, web_events and email values organized by campaign and campaign_cycle.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma seperated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma seperated string. Ex: campaign_status[]=running,stopped|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/total_track/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/total_track/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/total_track/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/total_track/USA_105569?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/total_track/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true
```

> Response Description with Cycles

```javascript
{
  "totaltrack_type": "totaltrack_web",       // TotalTrack - Web, Phone, Web & Phone
  "report_type": "total_track",             // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "currency": "USD",                        // Currency for Advertiser
  "report_data": {                          // Report details
    "campaigns": [                          // All data for campaigns
      {
        "name": "Ad_Campaign_1",            // Campaign name
        "global_master_campaign_id": "USA_1",// Identifier for campaign
        "start_date": "2016-07-10",         // Start date for campaign
        "end_date": "2016-10-24",           // End date for campaign
        "type": "totaltrack",               // Type of campaign
        "status": "running",                // Status of campaign
        "cycles": [                         // Data for cycles
          {
            "campaign_cycle": "USA_100",     // Identifier for cycle
            "start_date": "2016-10-10",     // Start date for cycle
            "end_date": "2016-10-14",       // End date for cycle
            "intervals": [                  // Data for specified interval
              {
                "start_date": "2016-10-10", // Start date of interval
                "leads": 310,               // Leads for interval
                "clicks": 45,               // Clicks for interval
                "calls": 85,                // Calls for interval
                "web_events": 27,           // Web events for interval
                "emails": 73,               // Emails for interval
              },
            ]
          }
        ]
      }
    ],
    "totals": {                             // Total data
      "leads": 310,                         // Total leads
      "clicks": 45,                         // Total click events
      "calls": 85,                          // Total call events
      "web_events": 27,                     // Total web events
      "emails": 73,                         // Total email events
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-12-15",         // Start date of interval
        "leads": ,                          // Total leads for interval
        "clicks": 90,                       // Total clicks for interval
        "calls": 30,                        // Total calls for interval
        "web_events": 210,                  // Total web events for interval
        "emails": 120,                      // Total emails for interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/total_track/USA_105569?campaign_cycle=45&global_master_campaign_id[]=USA_14&range=cycle",
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
  ],
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
}

```

> Response Description without Cycles

```javascript
{
  "totaltrack_type": "totaltrack_web",       // TotalTrack - Web, Phone, Web & Phone
  "report_type": "total_track",             // Type of report
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
        "type": "totaltrack",               // Type of campaign
        "status": "running",                // Status of campaign
        "intervals": [                      // Data for specified interval
          {
            "start_date": "2016-10-10", // Start date of interval
            "leads": 310,               // Leads for interval
            "clicks": 45,               // Clicks for interval
            "calls": 85,                // Calls for interval
            "web_events": 27,           // Web events for interval
            "emails": 73,               // Emails for interval
          },
        ]
      }
    ],
    "totals": {                             // Total data
      "leads": 310,                         // Total leads
      "clicks": 45,                         // Total click events
      "calls": 85,                          // Total call events
      "web_events": 27,                     // Total web events
      "emails": 73,                         // Total email events
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-12-15",         // Start date of interval
        "leads": 310,                       // Total leads for interval
        "clicks": 45,                       // Total clicks for interval
        "calls": 85,                        // Total calls for interval
        "web_events": 27,                   // Total web events for interval
        "emails": 73,                       // Total emails for interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/total_track/USA_105569?campaign_cycle=45&global_master_campaign_id[]=USA_14&range=cycle",
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
  ],
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
}

```

> Example Response:

```json
{
  "totaltrack_type": "totaltrack_web",
  "report_type": "total_track",
  "report_date": "2017-01-26",
  "earliest_date_available": "2016-01-01",
  "start_date": "2017-01-23",
  "end_date": "2017-01-25",
  "time_zone": "America/Los_Angeles",
  "interval_size": "day",
  "currency": "USD",
  "report_data": {
    "campaigns": [
      {
        "name": "TotalTrack Campaign",
        "global_master_campaign_id": "USA_5",
        "start_date": "2016-11-26",
        "end_date": "2017-01-25",
        "type": "totaltrack",
        "status": "running",
        "intervals": [
          {
            "start_date": "2017-01-23",
            "leads": 120,
            "clicks": 30,
            "calls": 10,
            "web_events": 70,
            "emails": 40
          },
          {
            "start_date": "2017-01-24",
            "leads": 120,
            "clicks": 30,
            "calls": 10,
            "web_events": 70,
            "emails": 40
          },
          {
            "start_date": "2017-01-25",
            "leads": 120,
            "clicks": 30,
            "calls": 10,
            "web_events": 70,
            "emails": 40
          }
        ]
      }
    ],
    "totals": {
      "leads": 360,
      "clicks": 90,
      "calls": 30,
      "web_events": 210,
      "emails": 120
    },
    "totals_per_interval": [
      {
        "start_date": "2017-01-23",
        "leads": 120,
        "clicks": 30,
        "calls": 10,
        "web_events": 70,
        "emails": 40
      },
      {
        "start_date": "2017-01-24",
        "leads": 120,
        "clicks": 30,
        "calls": 10,
        "web_events": 70,
        "emails": 40
      },
      {
        "start_date": "2017-01-25",
        "leads": 120,
        "clicks": 30,
        "calls": 10,
        "web_events": 70,
        "emails": 40
      }
    ]
  },
  "global_master_advertiser_id": "USA_123",
  "location": "https://api.reachlocalservices.com/client_reports/total_track/USA_123?start_date=2016-12-01&end_date=2016-12-31",
  "available_campaigns": [
    {
      "name": "TotalTrack Campaign",
      "global_master_campaign_id": "USA_5",
      "status": "running",
      "cycles": [
        {
          "campaign_cycle": "USA_50",
          "start_date": "2016-11-26",
          "end_date": "2016-12-26",
          "name": "TotalTrack Campaign"
        },
        {
          "campaign_cycle": "USA_51",
          "start_date": "2016-12-26",
          "end_date": "2017-01-25",
          "name": "TotalTrack Campaign"
        }
      ]
    }
  ],
  "data_import_status": {
    "DailyCampaignActivity": "2017-01-25T20:24:32.000Z",
    "Campaign": "2017-01-25T20:13:23.000Z"
  }
}
```