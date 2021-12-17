## Display Campaign Metrics Old

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/display_activity/[gmaid]?[query_params] |

**Note:** We recommend users to migrate to the [Unified Display API](#unified_display) in place of this API as this API will no longer be updated.

**Usage**

Use GET to retrieve information for the Display Activity report for a given advertiser.

The data returned will include impressions, remarketing impressions, custom targeting impressions, clicks, spend, CPM, walk-ins, and CPW values organized by campaign and campaign_cycle.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|campaign_cycle|Restrict results to a single campaign cycle|
|interval_size| Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles|Set to true or false on whether to include cycle nesting.<br>**Default value is false**|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a campaign_cycle, do not use date range params.

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/display_activity/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/display_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/display_activity/TEST_1?campaign_cycle=TEST_1
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/display_activity/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/search_activity/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true
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
        "global_master_campaign_id": "TEST_1",// Identifier for campaign
        "start_date": "2016-07-10",          // Start date for campaign
        "end_date": "2016-10-24",            // End date for campaign
        "type": "display",                   // Type of campaign
        "cycles": [                          // Data for cycles
          {
            "campaign_cycle": "TEST_1",       // Identifier for cycle
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
                "performance_impressions": 21268,    // Performance (video) impressions
                "calls": 0,                          // Calls for interval
                "video_views": 0,                    // Video Views (started) for interval
                "completed_views": 0,                // Video Views (completed) for interval
                "form_submissions_ct": 2,            // Click-Through Form Submissions
                "form_submissions_vt": 5,            // View-Through Form Submissions
                "priority_page_views_ct": 0,         // Click-Through Priority Page Views
                "priority_page_views_vt": 0,         // View-Through Priority Page Views
                "view_complete_rate": 0,             // Percent of videos completed
                "view_through_rate": 0,              // View Through Rate (percent)
                "walk_ins": 1,                       // Walk-ins
                "cpw": 18.0                          // Cost per Walk-in
                "cost_per_call": 0,                  // Cost per Call
                "cost_per_submission": 17.87         // Cost per Form Submission
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
      "ctr": 57.69,                         // Click through rate
      "walk_ins": 1,                        // Total Walk-ins
      "performance_impressions": 64213,     // Total Performance Impressions
      "calls": 0,                           // Total Calls
      "video_views": 0,                     // Total Video View
      "completed_views": 0,                 // Total Completed Video Views
      "form_submissions_ct": 3,             // Total Click-Through Form Submissions
      "form_submissions_vt": 5,             // Total View-Through Form Submissions
      "priority_page_views_ct": 0,          // Total Click-Through Priority Page Views
      "priority_page_views_vt": 0,          // Total View-Through Priority Page Views
      "view_through_rate": 0,               // Total View-Through Rate (percent)
      "video_complete_rate": 0,             // Total Video Completion Rate (percent)
      "cpw": 18.0                           // Total Cost per Walk-in
      "cost_per_call": 0,                   // Total Cost per Call
      "cost_per_submission": 78.21          // Total Cost per Form Submission
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
        "ctr": 57.69,                       // Click through rate
        "performance_impressions": 21268,   // Performance (video) impressions
        "calls": 0,                         // Total Calls for interval
        "video_views": 0,                   // Total Video Views (started) for interval
        "completed_views": 0,               // Total Video Views (completed) for interval
        "form_submissions_ct": 2,           // Total Click-Through Form Submissions for interval
        "form_submissions_vt": 5,           // Total View-Through Form Submissions for interval
        "priority_page_views_ct": 0,        // Total Click-Through Priority Page Views for interval
        "priority_page_views_vt": 0,        // Total View-Through Priority Page Views for interval
        "view_complete_rate": 0,            // Total Percent of videos completed for interval
        "view_through_rate": 0,             // Total View Through Rate (percent) for interval
        "walk_ins": 1,                      // Total Walk-ins for interval
        "cpw": 52.37                        // Total Cost per Walk-ins for interval
        "cost_per_call": 0,                 // Total Cost per Call for interval
        "cost_per_submission": 17.87        // Total Cost per Form Submission for interval
      }
    ]
  },
  "global_master_advertiser_id": "TEST_1" // Identifier for advertiser
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
        "global_master_campaign_id": "TEST_1",// Identifier for campaign
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
            "performance_impressions": 21268,    // Performance (video) impressions
            "calls": 0,                          // Calls for interval
            "video_views": 0,                    // Video Views (started) for interval
            "completed_views": 0,                // Video Views (completed) for interval
            "form_submissions_ct": 2,            // Click-Through Form Submissions
            "form_submissions_vt": 5,            // View-Through Form Submissions
            "priority_page_views_ct": 0,         // Click-Through Priority Page Views
            "priority_page_views_vt": 0,         // View-Through Priority Page Views
            "view_complete_rate": 0,             // Percent of videos completed
            "view_through_rate": 0,              // View Through Rate (percent)
            "walk_ins": 1,                       // Walk-ins
            "cpw": 18.0                          // Cost per Walk-in
            "cost_per_call": 0,                  // Cost per Call
            "cost_per_submission": 17.87         // Cost per Form Submission
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
      "ctr": 57.69,                         // Click through rate
      "walk_ins": 1,                        // Total Walk-ins
      "performance_impressions": 64213,     // Total Peformance Impressions
      "calls": 0,                           // Total Calls
      "video_views": 0,                     // Total Video View
      "completed_views": 0,                 // Total Completed Video Views
      "form_submissions_ct": 3,             // Total Click-Through Form Submissions
      "form_submissions_vt": 5,             // Total View-Through Form Submissions
      "priority_page_views_ct": 0,          // Total Click-Through Priority Page Views
      "priority_page_views_vt": 0,          // Total View-Through Priority Page Views
      "view_through_rate": 0,               // Total View-Through Rate (percent)
      "video_complete_rate": 0,             // Total Video Completion Rate (percent)
      "cpw": 18.0                           // Total Cost per Walk-in
      "cost_per_call": 0,                   // Total Cost per Call
      "cost_per_submission": 78.21          // Total Cost per Form Submission
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
        "ctr": 57.69,                       // Click through rate
        "performance_impressions": 21268,   // Performance (video) impressions
        "calls": 0,                         // Total Calls for interval
        "video_views": 0,                   // Total Video Views (started) for interval
        "completed_views": 0,               // Total Video Views (completed) for interval
        "form_submissions_ct": 2,           // Total Click-Through Form Submissions for interval
        "form_submissions_vt": 5,           // Total View-Through Form Submissions for interval
        "priority_page_views_ct": 0,        // Total Click-Through Priority Page Views for interval
        "priority_page_views_vt": 0,        // Total View-Through Priority Page Views for interval
        "view_complete_rate": 0,            // Total Percent of videos completed for interval
        "view_through_rate": 0,             // Total View Through Rate (percent) for interval
        "walk_ins": 0,                      // Total Walk-ins for interval for interval
        "cpw": 0,                           // Total Cost per Walk-in for interval
        "cost_per_call": 0,                 // Total Cost per Call for interval
        "cost_per_submission": 17.87        // Total Cost per Form Submission for interval
      }
    ]
  },
  "global_master_advertiser_id": "TEST_1" // Identifier for advertiser
}
```

> Example Response (without cycles):

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
        "global_master_campaign_id": "TEST_1",
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
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          }
        ]
      },
      {
        "name": "Stopped Campaign",
        "global_master_campaign_id": "TEST_1",
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
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          }
        ]
      },
      {
        "name": "Ended Campaign",
        "global_master_campaign_id": "TEST_1",
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
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-12",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
          },
          {
            "start_date": "2017-01-13",
            "impressions": 200,
            "remarketing_impressions": 60,
            "custom_targeting_impressions": 140,
            "clicks": 30,
            "spend": 75.5,
            "cpm": 377.5,
            "ctr": 57.69,
            "performance_impressions": 21268,
            "calls": 0,
            "video_views": 0,
            "completed_views": 0,
            "form_submissions_ct": 2,
            "form_submissions_vt": 5,
            "priority_page_views_ct": 0,
            "priority_page_views_vt": 0,
            "view_complete_rate": 0,
            "view_through_rate": 0,
            "walk_ins": 0,
            "cpw": 0,
            "cost_per_call": 0,
            "cost_per_submission": 17.87
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
        "ctr": 57.69,
        "performance_impressions": 21268,
        "calls": 0,
        "video_views": 0,
        "completed_views": 0,
        "form_submissions_ct": 2,
        "form_submissions_vt": 5,
        "priority_page_views_ct": 0,
        "priority_page_views_vt": 0,
        "view_complete_rate": 0,
        "view_through_rate": 0,
        "walk_ins": 0,
        "cpw": 0,
        "cost_per_call": 0,
        "cost_per_submission": 17.87
      },
      {
        "start_date": "2017-01-12",
        "impressions": 600,
        "remarketing_impressions": 180,
        "custom_targeting_impressions": 420,
        "clicks": 90,
        "spend": 226.5,
        "cpm": 377.5,
        "ctr": 57.69,
        "performance_impressions": 21268,
        "calls": 0,
        "video_views": 0,
        "completed_views": 0,
        "form_submissions_ct": 2,
        "form_submissions_vt": 5,
        "priority_page_views_ct": 0,
        "priority_page_views_vt": 0,
        "view_complete_rate": 0,
        "view_through_rate": 0,
        "walk_ins": 0,
        "cpw": 0,
        "cost_per_call": 0,
        "cost_per_submission": 17.87
      },
      {
        "start_date": "2017-01-13",
        "impressions": 600,
        "remarketing_impressions": 180,
        "custom_targeting_impressions": 420,
        "clicks": 90,
        "spend": 226.5,
        "cpm": 377.5,
        "ctr": 57.69,
        "performance_impressions": 21268,
        "calls": 0,
        "video_views": 0,
        "completed_views": 0,
        "form_submissions_ct": 2,
        "form_submissions_vt": 5,
        "priority_page_views_ct": 0,
        "priority_page_views_vt": 0,
        "view_complete_rate": 0,
        "view_through_rate": 0,
        "walk_ins": 0,
        "cpw": 0,
        "cost_per_call": 0,
        "cost_per_submission": 17.87
      }
    ]
  },
  "global_master_advertiser_id": "TEST_1"
}
```
