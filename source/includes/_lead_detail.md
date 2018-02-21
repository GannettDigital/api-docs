## Lead Details Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/lead_detail/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the Lead Details report for a given advertiser.

The report will contains calls, emails, web events, and chats broken down by day or month.
It will also contain the number of calls broken down by call duration.
A total section will contain all the calls, unique calls, calls connected, average call length, emails, web events, chats and leads for the date range specified.
Finally, the report will have a break down for calls by hour for each day of the week.

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
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Response Description

```javascript
{
  "report_type": "lead_detail",             // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "interval_size": "day",                   // Interval size for report
  "report_data": {                          // Report details
    "totals_per_interval":  [               // Lead totals broken down by day or month
      {
        "start_date": "2016-10-10",         // Start date for interval
        "calls": 25,                        // Calls for interval
        "emails": 31,                       // Emails for interval
        "web_events": 85,                   // Web events for interval
        "chats": 4                          // Chats for interval
      }
    ],
    "call_duration": [                      // Call duration data
      {
        "duration": "0-29",                 // Duration range in seconds
        "total": 182                        // Total calls for duration range
      },
      {
        "duration": "30-59",                // Duration range in seconds
        "total": 1                          // Total calls for duration range
      },
      {
        "duration": "60-119",               // Duration range in seconds
        "total": 1                          // Total calls for duration range
      },
      {
        "duration": "120",                  // Duration range in seconds
        "total": 2                          // Total calls for duration range
      }
    ],
    "totals": {                             // Totals
        "calls": 12,                        // Total calls
        "unique_calls": 16,                 // Total unique calls
        "calls_connected": 17,              // Total calls connected
        "average_call_length": 22,          // Total average call length
        "emails": 5,                        // Total emails
        "web_events": 31,                   // Total web events
        "chats": 6,                         // Total chats
        "leads": 85                         // Total leads
    },
    "calls_by_time_and_day": {              // Call by hour by day
      "sunday": {                           // Day of week
        "0": 0,                             // Hour of day
        "1": 0,
        "2": 0,
        "3": 0,
        "4": 2,
        "5": 2,
        "6": 8,
        "7": 5,
        "8": 33,
        "9": 57,
        "10": 34,
        "11": 27,
        "12": 26,
        "13": 18,
        "14": 12,
        "15": 10,
        "16": 3,
        "17": 3,
        "18": 0,
        "19": 0,
        "20": 0,
        "21": 0,
        "22": 0,
        "23": 0
      },
      // ...
      "saturday": {                         // Day of week
        "0": 0,                             // Hour of day
        "1": 0,
        "2": 0,
        "3": 0,
        "4": 2,
        "5": 2,
        "6": 8,
        "7": 5,
        "8": 33,
        "9": 57,
        "10": 34,
        "11": 27,
        "12": 26,
        "13": 18,
        "14": 12,
        "15": 10,
        "16": 3,
        "17": 3,
        "18": 0,
        "19": 0,
        "20": 0,
        "21": 0,
        "22": 0,
        "23": 0
      }
    ],
  }
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/lead_detail/USA_105569?campaign_cycle=45&global_master_campaign_id=USA_14&range=cycle",
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
     "Campaign": "2016-12-07T20:11:44.000Z",                // Table last updated
     "Call":  "2016-12-07T20:11:44.000Z"                    // Table last updated
  }
}

```

> Example Response:

```json
{
  "report_type": "lead_detail",
  "report_date": "2017-06-08",
  "earliest_date_available": "2016-03-28",
  "start_date": "2017-04-20",
  "end_date": "2017-04-27",
  "interval_size": "day",
  "report_data": {
    "totals_per_interval": [
      {
        "start_date": "2017-04-20",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      },
      {
        "start_date": "2017-04-21",
        "calls": 0,
        "emails": 0,
        "web_events": 1,
        "chats": 0
      },
      {
        "start_date": "2017-04-22",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      },
      {
        "start_date": "2017-04-23",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      },
      {
        "start_date": "2017-04-24",
        "calls": 1,
        "emails": 0,
        "web_events": 1,
        "chats": 0
      },
      {
        "start_date": "2017-04-25",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      },
      {
        "start_date": "2017-04-26",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      },
      {
        "start_date": "2017-04-27",
        "calls": 0,
        "emails": 0,
        "web_events": 0,
        "chats": 0
      }
    ],
    "call_duration": [
      {
        "duration": "0-29",
        "total": 0
      },
      {
        "duration": "30-59",
        "total": 0
      },
      {
        "duration": "60-119",
        "total": 0
      },
      {
        "duration": "120",
        "total": 1
      }
    ],
    "calls_by_time_and_day": {
      "monday": {
        "0": 0,
        "1": 0,
        "2": 0,
        "3": 0,
        "4": 0,
        "5": 0,
        "6": 0,
        "7": 0,
        "8": 0,
        "9": 0,
        "10": 0,
        "11": 0,
        "12": 0,
        "13": 0,
        "14": 0,
        "15": 1,
        "16": 0,
        "17": 0,
        "18": 0,
        "19": 0,
        "20": 0,
        "21": 0,
        "22": 0,
        "23": 0
      },
      "max": 1
    },
    "totals": {
      "calls": 1,
      "unique_calls": 1,
      "calls_connected": 1,
      "average_call_length": 522,
      "emails": 0,
      "web_events": 2,
      "chats": 0,
      "leads": 3
    }
  },
  "global_master_advertiser_id": "USA_102062",
  "location": "http://qweb2270.dev.wh.reachlocal.com/client_reports/lead_detail/USA_102062?end_date=2017-04-27&start_date=2017-04-20",
  "data_import_status": {
    "DailyCampaignActivity": "2017-02-08T21:19:58.000Z",
    "Campaign": "2017-02-08T17:55:17.000Z"
  }
}
```