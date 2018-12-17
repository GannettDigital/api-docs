## Keyword Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/keyword/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the Keyword report.  Data can be returned in different intervals determined by the range. The requirements for these parameters are described below.

The data returned will include totals for number of keywords, impressions, clicks, and click-through-rate (CTR), as well as a breakdown for each keyword.  Data will be returned in pages, controlled by the parameters `page` and `page_size`.  The first page is page 1.  Default values of 1 and 15 will be used if not specified.  Data is sorted in alphabetical order by keyword.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma seperated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma seperated string. Ex: campaign_status[]=running,stopped|
|`page_size`|Restrict number of keywords in result.  Default is 15 |
|`page`|Specifies which page of results to return.  Default is 1 |
|`sort_by`|Specifies what column to sort by.  Valid columns are: `keyword`, `clicks`, `impressions`, and `ctr`.  Default: `keyword`|
|`sort_dir`|Specifies the sort direction.  Can be either `asc` or `desc`. Default: `asc`|

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/keyword/USA_105569?start_date=2016-12-01&end_date=2016-12-31&page=1&page_size=15
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/keyword/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/keyword/USA_105569?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15
```

> Response Description

```javascript
{
  "report_type": "keyword",                 // Type of report
  "report_date": "2016-10-24",              // Date report ran
  "earliest_date_available": "2016-01-01",  // How far back data is available
  "start_date": "2016-10-10",               // Start date of report
  "end_date": "2016-10-24",                 // End date of report
  "time_zone": "America/Los_Angeles",       // Time Zone
  "report_data": {                          // Report details
    "keywords": [                           // Keyword data
      {
        "keyword": "beach home",        // Keyword
        "impressions": 25,              // Impressions for Keyword
        "clicks": 20,                   // Clicks for Keyword
        "ctr": 0.8                      // CTR for Keyword
      }
    ],
    "totals": {                         // Total data
      "keywords": 1,                    // Total Number of keywords in report across all pages
      "impressions": 25,                // Total impressions
      "clicks": 20,                     // Total click events
      "ctr": 0.8                        // Total call events
    },
  },
  "global_master_advertiser_id": "USA_105569", //Identifier for advertiser
  "location": "https://api.reachlocalservices.com/client_reports/keyword/USA_105569?campaign_cycle=45&global_master_campaign_id[]=USA_14&page=1&page_size=15",
  "available_campaigns": [                  // All campaigns for advertiser
    {
      "name": "Ad_Campaign_1",              // Name of campaign
      "global_master_campaign_id": "USA_11",// Identifier for campaign
    }
  ],
  "page": 1,                                // Page number of this data
  "page_size": 15,                          // page size used to generate this data
  "data_import_status": {
     "KeywordActivity": "2016-12-07T20:11:44.000Z",   // Table last updated
     "Campaign": "2016-12-07T20:11:44.000Z"           // Table last updated
  }
}

```

> Example Response:

```json
{
  "report_type": "keyword",
  "report_date": "2017-01-11",
  "earliest_date_available": "2016-01-01",
  "start_date": "2016-12-13",
  "end_date": "2017-01-11",
  "time_zone": "America/Los_Angeles",
  "report_data": {
    "keywords": [
      {
        "keyword": "beach",
        "impressions": 2300,
        "clicks": 230,
        "ctr": 10
      },
      {
        "keyword": "cruise",
        "impressions": 2300,
        "clicks": 230,
        "ctr": 10
      },
      {
        "keyword": "ocean",
        "impressions": 2300,
        "clicks": 230,
        "ctr": 10
      },
      {
        "keyword": "vacation",
        "impressions": 2300,
        "clicks": 230,
        "ctr": 10
      }
    ],
    "totals": {
      "keywords": 3,
      "impressions": 9200,
      "clicks": 920,
      "ctr": 10
    }
  },
  "global_master_advertiser_id": "USA_123",
  "location": "https://api.reachlocalservices.com/client_reports/keyword/USA_123?interval_type=day&number_of_intervals=30&range=custom&status%5B%5D=stopped&page=1&page_size=15",
  "available_campaigns": [
    {
      "name": "Stopped Campaign",
      "global_master_campaign_id": "USA_3",
      "status": "stopped"
    }
  ],
  "page": 1,
  "page_size": 15,
  "data_import_status": {
    "KeywordActivity": "2017-01-04T21:23:49.000Z",
    "Campaign": "2017-01-04T21:23:49.000Z"
  }
}
```