## Search Campaign Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/search_activity/[gmaid]?[query_params] |
### API Name: Search Activity Report
### Usage
Use GET to retrieve information for the Search Activity report for a given advertiser.

The data returned will include impressions, leads, clicks, calls, web_events, emails, and spend values organized by campaign and campaign_cycle.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those occurring on or after this date.|
|`end_date`|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.


| Field Name | Datatype | Description |
|---|---|---|
|`report_type`|String|Type of report.|
|`report_date`|String|Date report ran.|
|`earliest_date_available`|String|How far back data is available.|
|`start_date`|String|Start date of report.|
|`end_date`|String|End date of report.|
|`time_zone`|String|Time Zone.|
|`interval_size`|String|Interval Size ('day', 'calendar_week' or 'calendar_month').|
|`currency`|String|Currency for Advertiser.|
|`report_data`|Object|Report details ('campaigns', 'totals', 'totals_per_interval').|
|`global_master_advertiser_id`|String|Identifier for advertiser.|
|`location`|String||
|`available_campaigns`|Array|All campaigns for advertiser.|
|`data_import_status`|Object|Timestamp of last updates of tables.|


#### Report Data Campaigns Details

| Field Name | Datatype | Description |
|---|---|---|
|`name`|String|Campaign name.|
|`global_master_campaign_id`|String|Identifier for campaign.|
|`start_date`|String|Start date for campaign.|
|`end_date`|String|End date for campaign.|
|`type`|String|Type of campaign.|
|`intervals`|Array|Data for specified interval.|

#### Campaign Intervals Details

| Field Name | Datatype | Description |
|---|---|---|
|`start_date`|String|Start date of interval.|
|`impressions`|Integer|Impressions for interval.|
|`leads`|Integer|Leads for interval.|
|`clicks`|Integer|Clicks for interval.|
|`calls`|Integer|Calls for interval.|
|`web_events`|Integer|Web events for interval.|
|`emails`|Integer|Emails for interval.|
|`spend`|Integer|Spend for interval.|
|`ctr`|Integer|Click through rate for interval.|
|`cpc`|Integer|Cost per click for interval.|

#### Report Data Totals Details

| Field Name | Datatype | Description |
|---|---|---|
|`impressions`|Integer|Total impressions.|
|`leads`|Integer|Total leads.|
|`clicks`|Integer|Total click events.|
|`calls`|Integer|Total call events.|
|`web_events`|Integer|Total web events.|
|`emails`|Integer|Total email events.|
|`spend`|Integer|Total spend.|
|`ctr`|Integer|Total click through rate.|
|`cpc`|Integer|Toal cost per click.|
|`device_breakdowns`|Object|Object containing Impressions and Clicks totals.|

#### Totals Device Breakdowns Impressions Details

| Field Name | Datatype | Description |
|---|---|---|
|`desktop`|Object|Total and percent of total for impressions of desktop.|
|`mobile`|Object|Total and percent of total for impressions of mobile.|
|`tablet`|Object|Total and percent of total for impressions of tablet.|

#### Totals Device Breakdowns Clicks Details

| Field Name | Datatype | Description |
|---|---|---|
|`desktop`|Object|Total and percent of total for clicks of desktop.|
|`mobile`|Object|Total and percent of total for clicks of mobile.|
|`tablet`|Object|Total and percent of total for clicks of tablet.|

#### Report Data Totals Per Interval Details

| Field Name | Datatype | Description |
|---|---|---|
|`start_date`|String|Start date of interval.|
|`impressions`|Integer|Total impressions for.| interval
|`leads`|Integer|Total leads for interval.|
|`clicks`|Integer|Total clicks for interval.|
|`calls`|Integer|Total calls for interval.|
|`web_events`|Integer|Total web events for interval.|
|`emails`|Integer|Total emails for interval.|
|`spend`|Integer|Total spend for interval.|
|`ctr`|Integer| Total click through rate for.| interval
|`cpc`|Integer|Total cost per click for interval.|

#### Available Campaigns Details

| Field Name | Datatype | Description |
|---|---|---|
|`name`|String|Name of campaign.|
|`global_master_campaign_id`|String|Identifier for campaign.|
|`status`|String|Status for campaign.|
|`cycles`|Array|All cycles for advertiser.|

#### Available Campaigns Cycles Details

| Field Name | Datatype | Description |
|---|---|---|
|`campaign_cycle`|Integer|Identifier for cycle.|
|`start_date`|String|Start date of cycle.|
|`end_date`|String|End date of cycle.|
|`name`|String|Name of cycle.|

#### Data Import Status Details

| Field Name | Datatype | Description |
|---|---|---|
|`DailyCampaignActivity`|String|Table last updated.|
|`Campaign`|String|Table last updated.|


### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```

>  Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?campaign_cycle=USA_100"
```

>  Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31"
```

>  Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

>  Response Description

```javascript
{
  "report_type": "search_activity",         // Type of report
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
        "intervals": [                  // Data for specified interval
          {
            "start_date": "2016-10-10", // Start date of interval
            "impressions": 78,          // Impressions for interval
            "leads": 310,               // Leads for interval
            "clicks": 45,               // Clicks for interval
            "calls": 85,                // Calls for interval
            "web_events": 27,           // Web events for interval
            "emails": 73,               // Emails for interval
            "spend": 18,                // Spend for interval
            "ctr": 57.69,               // Click through rate for interval
            "cpc": 0.4                  // Cost per click for interval
          },
        ]
      }
    ],
    "totals": {                             // Total data
      "impressions": 78,                    // Total impressions
      "leads": 310,                         // Total leads
      "clicks": 45,                         // Total click events
      "calls": 85,                          // Total call events
      "web_events": 27,                     // Total web events
      "emails": 73,                         // Total email events
      "spend": 18,                          // Total spend
      "ctr": 57.69,                         // Total click through rate
      "cpc": 0.4,                           // Toal cost per click
      "device_breakdowns": {                // Breakdown by device
        "impressions": {
          "desktop": {
            "total": 20,                    // Total impressions for desktop
            "percent": 33.33                // Percent of all impressions
          },
          "mobile": {
            "total": 20,                    // Total impressions for mobile
            "percent": 33.33                // Percent of all impression
          },
          "tablet": {
            "total": 20,                    // Total impressions for tablet
            "percent": 33.33                // Percent of all impression
          }
        },
        "clicks": {
          "desktop": {
            "total": 20,                    // Total impressions for desktop
            "percent": 33.33                // Percent of all clicks
          },
          "mobile": {
            "total": 20,                    // Total impressions for mobile
            "percent": 33.33                // Percent of all clicks
          },
          "tablet": {
            "total": 20,                    // Total impressions for tablet
            "percent": 33.33                // Percent of all clicks
          }
        }
      }
    },
    "totals_per_interval": [                // Totals per interval (over multiple campaigns)
      {
        "start_date": "2016-12-15",         // Start date of interval
        "impressions": 600,                 // Total impressions for interval
        "leads": 360,                       // Total leads for interval
        "clicks": 90,                       // Total clicks for interval
        "calls": 30,                        // Total calls for interval
        "web_events": 210,                  // Total web events for interval
        "emails": 120,                      // Total emails for interval
        "spend": 226.5,                     // Total spend for interval
        "ctr": 15,                          // Total click through rate for interval
        "cpc": 2.52                         // Total cost per click for interval
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569", // Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/search_activity/USA_105569?campaign_cycle=45&global_master_campaign_id[]=USA_14&range=cycle",
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

> Example Response (with cycles):


```json
{
  "report_type": "search_activity",
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
            "leads": 4,
            "clicks": 55,
            "calls": 4,
            "web_events": 0,
            "emails": 0,
            "spend": 100.37,
            "ctr": 3.9,
            "cpc": 1.82
          },
          {
            "start_date": "2017-05-02",
            "impressions": 1156,
            "leads": 1,
            "clicks": 54,
            "calls": 1,
            "web_events": 0,
            "emails": 0,
            "spend": 88.83,
            "ctr": 4.67,
            "cpc": 1.65
          }
        ]
      }
    ],
    "totals": {
      "impressions": 2566,
      "leads": 5,
      "clicks": 109,
      "calls": 5,
      "web_events": 0,
      "emails": 0,
      "spend": 189.2,
      "ctr": 4.25,
      "cpc": 1.74,
      "device_breakdowns": {
        "impressions": {
          "desktop": {
            "total": 1523,
            "percent": 63.94
          },
          "mobile": {
            "total": 646,
            "percent": 27.12
          },
          "tablet": {
            "total": 213,
            "percent": 8.94
          }
        },
        "clicks": {
          "desktop": {
            "total": 55,
            "percent": 53.92
          },
          "mobile": {
            "total": 43,
            "percent": 42.16
          },
          "tablet": {
            "total": 4,
            "percent": 3.92
          }
        }
      }
    },
    "totals_per_interval": [
      {
        "start_date": "2017-05-01",
        "impressions": 1410,
        "leads": 4,
        "clicks": 55,
        "calls": 4,
        "web_events": 0,
        "emails": 0,
        "spend": 100.37,
        "ctr": 3.9,
        "cpc": 1.82
      },
      {
        "start_date": "2017-05-02",
        "impressions": 1156,
        "leads": 1,
        "clicks": 54,
        "calls": 1,
        "web_events": 0,
        "emails": 0,
        "spend": 88.83,
        "ctr": 4.67,
        "cpc": 1.65
      }
    ]
  },
  "global_master_advertiser_id": "USA_187198",
  "location": "https://api.reachlocalservices.com/client_reports/search_activity/USA_187198?end_date=2017-05-02&start_date=2017-05-01",
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
  ],
  "data_import_status": {
    "DailyCampaignActivity": "2017-05-15T00:00:00.000Z",
    "Campaign": "2017-07-25T00:00:00.000Z"
  }
}

```
