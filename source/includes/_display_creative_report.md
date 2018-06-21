## Display Creative Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/display_creative/[gmaid]?[query_params] |

### Usage
Use GET to retrieve information for the Display Creative Report for a given advertiser.

The data returned will include spend, impressions, clicks, click-through rate (ctr), cost per thousand (cpm), cost per click (cpc), walk-ins, click-through form submissions, view-through form submissions, cost per submission, click-through priority page views, and view-through priority page views organized by campaign and broken down by creative type and creative size.

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
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_creative/USA_126034?start_date=2018-05-01&end_date=2018-05-01
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_creative/USA_126034?global_master_campaign_id[]=USA_2375336&start_date=2018-05-01&end_date=2018-05-01
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_creative/USA_126034?campaign_cycle=USA_2522849
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/display_creative/USA_126034?&campaign_status[]=running&campaign_status[]=stopped&start_date=2018-05-01&end_date=2018-05-01
```

> Response Description

```javascript
{
    "report_type": "display_creative",                                          // Type Of Report
    "report_date": "2018-06-13",                                                // Date Report Ran
    "earliest_date_available": "2017-12-04",                                    // How Far Back Data is Available
    "start_date": "2018-05-01",                                                 // Start Date of Report
    "end_date": "2018-05-01",                                                   // End Date of Report
    "time_zone": "America/Los_Angeles",                                         // Time Zone
    "interval_size": "day",                                                     // Interval Size ('day', 'calendar_week' or 'calendar_month')
    "global_master_advertiser_id": "USA_126034",                                // Global Master Advertiser (GMAID) for report
    "report_data": {                                                            // Report Details
        "campaigns": [                                                          // All Data for Campaigns
            {
                "name": "GeoFence | FCS | Lee County Oncology Competitors",     // Campaign Name
                "global_master_campaign_id": "USA_2375336",                     // Identifier for Campaign
                "start_date": "2018-05-01",                                     // Start Date for Campaign
                "end_date": null,                                               // End Date for Campaign
                "type": "display",                                              // Type of Campaign
                "status": "running",                                            // Campaign Status
                "intervals": [                                                  // Data for Specified Interval
                    {
                        "start_date": "2018-05-01",                             // Start Date of Interval
                        "spend": 16.68,                                         // Spend for Interval
                        "impressions": 3029,                                    // Impressions for Interval
                        "clicks": 4,                                            // Clicks for Interval
                        "ctr": 0.13,                                            // Spend for Interval
                        "cpm": 5.51,                                            // Cost per Thousand for Interval
                        "cpc": 4.17,                                            // Cost per Click for Interval
                        "walk_ins": 21,                                         // Walk-ins for Interval
                        "form_submissions_ct": 0,                               // Click-Through Form Submissions
                        "form_submissions_vt": 0,                               // View-Through Form Submissions
                        "cost_per_submission": 0,                               // Cost per Form Submission
                        "priority_page_views_ct": 0,                            // Click-Through Priority Page Views
                        "priority_page_views_vt": 0,                            // View-Through Priority Page Views
                        "creative_types": [                                     // Creative Types for Interval
                            {
                                "creative_type": "Rich Media",                  // Creative Type
                                "spend": 16.68,                                 // Spend for Creative Type
                                "impressions": 3029,                            // Impressions for Creative Type
                                "clicks": 4,                                    // Clicks for Creative Type
                                "ctr": 0.13,                                    // Click-Through Rate for Creative Type
                                "cpm": 5.51,                                    // Cost per Thousand for Creative Type
                                "cpc": 4.17,                                    // Cost per Click for Creative Type
                                "walk_ins": 21,                                 // Walk-ins for Creative Type
                                "form_submissions_ct": 0,                       // Click-Through Form Submissions
                                "form_submissions_vt": 0,                       // View-Through Form Submissions
                                "cost_per_submission": 0,                       // Cost per Form Submission
                                "priority_page_views_ct": 0,                    // Click-Through Priority Page Views
                                "priority_page_views_vt": 0,                    // View-Through Priority Page Views
                                "creative_sizes": [                             // Creative Sizes for Creative Type
                                    {
                                        "creative_size": "160x600",             // Creative Size
                                        "spend": 0.3,                           // Spend for Creative Size
                                        "impressions": 48,                      // Impressions for Creative Size
                                        "clicks": 0,                            // Clicks for Creative Size
                                        "ctr": 0,                               // Click-Through Rate for Creative Size
                                        "cpm": 6.33,                            // Cost per Thousand for Creative Size
                                        "cpc": 0,                               // Cost per Click for Creative Size
                                        "walk_ins": 0,                          // Walk-ins for Creative Size
                                        "form_submissions_ct": 0,               // Click-Through Form Submissions
                                        "form_submissions_vt": 0,               // View-Through Form Submissions
                                        "cost_per_submission": 0,               // Cost per Submission
                                        "priority_page_views_ct": 0,            // Click-Through Priority Page Views
                                        "priority_page_views_vt": 0             // View-Through Priority Page Views
                                    },
                                    {
                                        "creative_size": "250x250",
                                        "spend": 0.1,
                                        "impressions": 19,
                                        "clicks": 0,
                                        "ctr": 0,
                                        "cpm": 5,
                                        "cpc": 0,
                                        "walk_ins": 0,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    },
                                    {
                                        "creative_size": "300x50",
                                        "spend": 0.58,
                                        "impressions": 106,
                                        "clicks": 1,
                                        "ctr": 0.94,
                                        "cpm": 5.5,
                                        "cpc": 0.58,
                                        "walk_ins": 3,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    },
                                    {
                                        "creative_size": "300x250",
                                        "spend": 5.55,
                                        "impressions": 1026,
                                        "clicks": 1,
                                        "ctr": 0.1,
                                        "cpm": 5.41,
                                        "cpc": 5.55,
                                        "walk_ins": 3,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    },
                                    {
                                        "creative_size": "320x50",
                                        "spend": 8.73,
                                        "impressions": 1571,
                                        "clicks": 1,
                                        "ctr": 0.06,
                                        "cpm": 5.55,
                                        "cpc": 8.73,
                                        "walk_ins": 15,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    },
                                    {
                                        "creative_size": "320x480",
                                        "spend": 0.05,
                                        "impressions": 8,
                                        "clicks": 0,
                                        "ctr": 0,
                                        "cpm": 5.89,
                                        "cpc": 0,
                                        "walk_ins": 0,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    },
                                    {
                                        "creative_size": "728x90",
                                        "spend": 1.37,
                                        "impressions": 251,
                                        "clicks": 1,
                                        "ctr": 0.4,
                                        "cpm": 5.46,
                                        "cpc": 1.37,
                                        "walk_ins": 0,
                                        "form_submissions_ct": 0,
                                        "form_submissions_vt": 0,
                                        "cost_per_submission": 0,
                                        "priority_page_views_ct": 0,
                                        "priority_page_views_vt": 0
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "totals_per_interval": [                                                // Totals per Interval (over multiple campaigns)
            {
                "start_date": "2018-05-01",                                     // Start Date of Interval
                "spend": 16.68,                                                 // Total Spend for Interval
                "impressions": 3029,                                            // Total Impressions for interval
                "clicks": 4,                                                    // Total Clicks for Interval
                "ctr": 0.13,                                                    // Total Click-Through rate for Interval
                "cpm": 5.51,                                                    // Total Cost per Thousand for Interval
                "cpc": 4.17,                                                    // Total Cost per Click for Interval
                "walk_ins": 21,                                                 // Total Walk-ins for Interval
                "form_submissions_ct": 0,                                       // Total Click-Through Form Submissions
                "form_submissions_vt": 0,                                       // Total View-Through Form Submissions
                "cost_per_submission": 0,                                       // Total Cost per Submission
                "priority_page_views_ct": 0,                                    // Total Click-Through Priority Page Views
                "priority_page_views_vt": 0                                     // Total View-Through Priority Page Views
            }
        ],
        "totals": {                                                             // Total Data
            "spend": 16.68,                                                     // Total Spend
            "impressions": 3029,                                                // Total Impressions
            "clicks": 4,                                                        // Total Clicks
            "ctr": 0.13,                                                        // Total Click-Through Rate
            "cpm": 5.51,                                                        // Total Cost per Thousand
            "cpc": 4.17,                                                        // Total Cost per Click
            "walk_ins": 21,                                                     // Total Walk-ins
            "form_submissions_ct": 0,                                           // Total Click-Through Form Submissions
            "form_submissions_vt": 0,                                           // Total View-Through Form Submissions
            "cost_per_submission": 0,                                           // Total Cost per Submission
            "priority_page_views_ct": 0,                                        // Total Click-Through Priority Page Views
            "priority_page_views_vt": 0                                         // Total View-Through Priority Page Views
        }
    }
}
```
