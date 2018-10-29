## Campaigns Overview Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns_overview/[gmaid]|

#### Usage
Use GET to retrieve information for the Campaigns Overview report.

The data returned will include campaign performance metrics for the last 30 days and a campaign list with additional details and breakdowns per cycle.  Campaign are limited to those that have had activity within the previous year.  This means that a campaign that ended 13 months prior will not be included in the campaign list section.

The performance metrics for the last 30 days are across all active campaigns and will include:

- Total Impressions
- Total Clicks
- Total Calls
- Total Emails
- Total Web Events
- Total Chat Events

The campaign list section will list all (both active and inactive) campaigns with the following information for each campaign in the list:

- Campaign Name
- Campaign ID (global_master_campaign_id)
- Campaign Type
- Source
- Currency
- Start Date
- End Date
- Status
- A List of Cycles with:
  - Cycle ID
  - Start Date
  - End Date
  - Number of Impressions
  - Number of Clicks
  - Number of Leads
  - Spend
  - Budget Amount

### Parameters

None

### Example:

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns_overview/USA_105569
```

> The above command returns JSON structured similar to the following:

```javascript
{
  "report_type": "campaigns_overview",         // Type of report
  "report_date": "2016-10-24",                 // Date report ran
  "start_date": "2017-10-16",                  // Start Date
  "end_date": "2017-11-15",                    // End Date
  "time_zone": "America/Los_Angeles",          // Time Zone of Data
  "currency": "USD",                           // Currency of report
  "report_data": {                             // Report details
    "totals": {                                // Total data
      "impressions": 78,                       // Total impressions
      "clicks": 45,                            // Total click events
      "calls": 85,                             // Total call events
      "emails": 73,                            // Total email events
      "web_events": 27,                        // Total web events
      "chats": 23                              // Total chat events
    },
    "campaigns": [                             // All data for campaigns
      {
        "name": "Ad_Campaign_1",               // Campaign name
        "global_master_campaign_id": "USA_1",  // Identifier for campaign
        "type": "Search",                      // Type of campaign
        "source": "ReachEdge"                  // Source of campaign
        "currency": "USD",                     // Type of currency used
        "start_date": "2016-07-10",            // Start date for campaign
        "end_date": "2016-10-24",              // End date for campaign
        "status": "running",                   // campaign status
        "cycles": [                            // Data for cycles
          {
            "campaign_cycle": "20161010",      // Identifier for cycle
            "start_date": "2016-10-10",        // Start date for cycle
            "end_date": "2016-10-14",          // End date for cycle
            "impressions": 78,                 // Total Impressions for cycle
            "clicks": 45,                      // Total Clicks for cycle
            "leads": 310,                      // Total Leads for cycle
            "spend": 18,                       // Total Spend/Cost of cycle
            "budget": 30                       // Total Budget of cycle
          }
        ]
      },
    ],
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/campaigns_overview/USA_105569", // URL location of this report
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
}
```

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns_overview/USA_123"
```

> The above command returns JSON structured similar to the following:

```json
{
  "report_type": "campaigns_overview",
  "report_date": "2017-01-10",
  "start_date": "2017-10-16",
  "end_date": "2017-11-15",
  "time_zone": "America/Los_Angeles",
  "currency": "USD",
  "report_data": {
    "totals": {
      "calls": 1980,
      "clicks": 5040,
      "emails": 990,
      "impressions": 10350,
      "web_events": 2970,
      "chats": 495
    },
    "campaigns": [
      {
        "name": "Drain Cleaning",
        "global_master_campaign_id": "USA_321",
        "type": "search",
        "currency": "USD",
        "start_date": "2015-02-09",
        "end_date": null,
        "status": "running",
        "cycles": [
          {
            "campaign_cycle": "USA_2",
            "start_date": "2016-12-10",
            "end_date": null,
            "impressions": 3450,
            "clicks": 1680,
            "leads": 1980,
            "spend": 400.2,
            "budget": 1234
          },
          {
            "campaign_cycle": "USA_2",
            "start_date": "2015-02-09",
            "end_date": "2015-03-09",
            "impressions": 0,
            "clicks": 0,
            "leads": 0,
            "spend": 0,
            "budget": 0
          }
        ]
      },
      {
        "name": "Stopped Campaign",
        "global_master_campaign_id": "USA_321",
        "type": "search",
        "source": "Search Engine Marketing",
        "currency": "USD",
        "start_date": "2015-02-09",
        "end_date": null,
        "status": "stopped",
        "cycles": [
          {
            "campaign_cycle": "USA_4",
            "start_date": "2016-12-10",
            "end_date": null,
            "impressions": 3450,
            "clicks": 1680,
            "leads": 1980,
            "spend": 400.2,
            "budget": 1234
          },
          {
            "campaign_cycle": "USA_4",
            "start_date": "2015-02-09",
            "end_date": "2015-03-09",
            "impressions": 0,
            "clicks": 0,
            "leads": 0,
            "spend": 0,
            "budget": 0
          }
        ]
      },
      {
        "name": "Ended Campaign",
        "global_master_campaign_id": "USA_321",
        "type": "search",
        "source": "ReachEdge",
        "currency": "USD",
        "start_date": "2015-02-09",
        "end_date": null,
        "status": "ended",
        "cycles": [
          {
            "campaign_cycle": "USA_5",
            "start_date": "2016-12-10",
            "end_date": null,
            "impressions": 3450,
            "clicks": 1680,
            "leads": 1980,
            "spend": 400.2,
            "budget": 1234
          },
          {
            "campaign_cycle": "USA_5",
            "start_date": "2015-02-09",
            "end_date": "2015-03-09",
            "impressions": 0,
            "clicks": 0,
            "leads": 0,
            "spend": 0,
            "budget": 0
          }
        ]
      }
    ]
  },
  "global_master_advertiser_id": "USA_123",
  "location": "https://api.reachlocalservices.com/client_reports/campaigns_overview/USA_123",
  "data_import_status": {
    "DailyCampaignActivity": null,
    "Campaign": null
  }
}
```