### Google Keyword Report

### Resource Overview

| Method | URI Format |
|---|---|
|GET|/client_reports/google_keyword/[gmaid]?[query_params]|

### Usage
Use GET to retrieve information for the Keyword Google Compliance Report.  Data can be returned in different intervals determined by the range. The requirements for these parameters are described below.

The data returned will include google only totals for impressions, clicks, click-through-rate (CTR), media_cost, keywords, and average position.  It will also show breakdowns per keyword for clicks, media cost, impressions, average position, first page cost-per-click (CPC) and top page cost-per-click.  Data will be returned in pages, controlled by the parameters `page` and `page_size`.  The first page is page 1.  Default values of 1 and 15 will be used if not specified.  Data is sorted in alphabetical order by keyword.

**Note: This API will not provide an Average page position from 1/1/2020 onward in the response.**

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those occurring on or after this date.|
|`end_date`|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|`page_size`|Restrict number of keywords in result.  Default is 15 |
|`page`|Specifies which page of results to return.  Default is 1 |
|`sort_by`|Specifies what column to sort by.  Valid columns are: `keyword`, `clicks`, `media cost`, `impressions`, `avg_position`, `first_page_cpc`, `top_page_cpc`.  Default: `keyword`|
|`sort_dir`|Specifies the sort direction.  Can be either `asc` or `desc`. Default: `asc`|

### Examples:
> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_keyword/USA_105569?start_date=2016-12-01&end_date=2016-12-31&page=1&page_size=15"
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_keyword/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15"
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/client_reports/google_keyword/USA_105569?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15"
```

> Response Description

```javascript
{
    "report_type": "google_keyword",                            // Type of report
    "report_date": "2018-01-25",                                // Date report ran
    "earliest_date_available": "2017-06-25",                    // How far back data is available
    "start_date": "2018-01-10",                                 // Start date of report
    "end_date": "2018-01-25",                                   // End date of report
    "time_zone": "America/Los_Angeles",                         // Time Zone
    "report_data": {                                            // Report details
        "keywords": [                                           // Keyword data
            {
                "keyword": "best ductless air conditioners",    // Keyword
                "clicks": 0,                                    // Clicks for Keyword
                "media_cost": 0,                                // Media Cost for Keyword
                "impressions": 2,                               // Impressions for Keyword
                "average_position": 1,                          // Average Position for Keyword
                "first_page_cpc": 7.34,                         // First Page CPC for Keyword
                "top_page_cpc": 16                              // Current Top Page CPC for Keyword
            }
        ],
        "totals": {                                             // Total data
            "clicks": 201,                                      // Total clicks
            "media_cost": 918.68,                               // Total media_cost
            "impressions": 17927,                               // Total impressions
            "average_position": 3.18,                           // Average Position across all keywords
            "ctr": 1.12,                                        // Total click-through rate across all keywords
            "keywords": 255                                     // Total Number of keywords in report across all pages
        }
    },
    "global_master_advertiser_id": "USA_2247",                  // Global master advertiser id
    "page": 1,                                                  // Page number of this data
    "page_size": 1                                              // Page size used to generate this data
}

```
