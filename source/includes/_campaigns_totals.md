## Campaigns Totals Report

### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/campaigns_totals/[gmaid]
```

The data returned will include count of running campaigns and leads for all campaign types over the last 30 days.

### Parameters

None

### Examples:

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/campaigns_totals/USA_105569
```

> Response Description

```javascript
{
  "report_type": "campaigns_totals",           // Type of report
  "report_date": "2016-10-24",                 // Date report ran
  "start_date": "2017-10-16",                  // Start Date
  "end_date": "2017-11-15",                    // End Date
  "time_zone": "America/Los_Angeles",          // Time Zone
  "report_data": {                             // Report details
    "campaigns": 1,                            // Total running campaigns
    "leads": 1234                              // Total leads for ALL campaigns
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/api/client_reports/campaigns_totals/USA_105569", // URL location of this report
  "data_import_status": {
     "DailyCampaignActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"                 // Table last updated
  }
}
```

> Example Response:

```json
{
  "report_type": "campaigns_totals",
  "report_date": "2017-01-10",
  "start_date": "2017-10-16",
  "end_date": "2017-11-15",
  "time_zone": "America/Los_Angeles",
  "report_data": {
    "campaigns": 1,
    "leads": 6300
  },
  "global_master_advertiser_id": "USA_123",
  "location": "https://api.reachlocalservices.com/api/client_reports/campaigns_totals/USA_123",
  "data_import_status": {
    "DailyCampaignActivity": null,
    "Campaign": null
  }
}
```