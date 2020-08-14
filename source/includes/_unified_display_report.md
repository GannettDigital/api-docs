## Unified Display Campaign Metrics
<a name="unified_display"></a>
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/unified_display/[gmaid]?[query_params] |
### API Name: Unified Display Report

### Summary
This is a new Display Metrics API that can be used by customers that have Display campaigns from either the ReachLocal or Gannett brand. All metrics are reported at the creative level, and aggregated at the Interval/Campaign level for ReachLocal brand or Line Item level for the Gannett brand. When data is unavailable, corresponding property will not be present in the response. For example, if we do not have data for a `creative_type` or `creative_size`, it will not be present in the response.

**Note:** We recommend users to migrate to this API in place of the Display Activity API and Display Creative API as they will no longer be updated.

**Note:** MOAT metrics are not supported after December 31, 2019. Any requests for date ranges after this will not include MOAT metrics. Date ranges that span beyond December 31, 2019 will show calculations based on start_date through December 31, 2019.

### Usage
Use GET to retrieve information for the Unified Display API that will retrieve metrics on display campaigns. Data can be returned for a GMAID for a specific date range determined by start_date and end_date. Data can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Default | Description |
|---|---|---|---|
|`start_date`|Yes|--|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|--|Restricts the results to those occurring on or before this date.|
|`interval_size`|No|none|Specifies the type of interval: `none`, `day`, `calendar_week`, or `calendar_month`|

### Response Data Details

| Field Name | Datatype | Description |
|---|---|---|
|`api_name`|String|Name of the API.|
|`api_run_date`|String|Date report was run.|
|`earliest_date_available`|String|How far back data is available.|
|`start_date`|String|Start Date.|
|`end_date`|String|End Date.|
|`time_zone`|String|Time Zone of Data.|
|`interval_size`|String|Interval Size (`none`, `day`, `calendar_week`, or `calendar_month).|
|`currency`|String|Currency for Advertiser.|
|`global_master_advertiser_id`|String|Identifier for Advertiser.|
|`advertiser_name`|String|Name of Advertiser.|
|`report_data`|Object|[Report Data Object (with Line Items)](#udlineitemsreportdata) or [Report Data Object (with Campaigns)](#udcampaignsreportdata)|

<a name="udlineitemsreportdata"></a>
#### Report Data Object (with Line Items)
| Field Name | Datatype | Description |
|---|---|---|---|
|`totals`|Object|Object of totals details. [Totals Object](#udtotals)|
|`intervals`|Object|Object of intervals details. [Intervals Object](#udintervals)|
|`campaigns`|Object|Object of campaigns details. [Campaigns Object](#udcampaigns)|
|`line_items`|Object|Object of line items details. [Line Items Object](#udlineitems)|

<a name="udcampaignsreportdata"></a>
#### Report Data Object (with Campaigns)
| Field Name | Datatype | Description |
|---|---|---|---|
|`totals`|Object|Object of totals details. [Totals Object](#udtotals)|
|`campaigns`|Object|Object of campaigns details. [Campaigns Object](#udcampaigns)|
|`line_items`|Object|Object of line items details. [Line Items Object](#udlineitems)|

<a name="udtotals"></a>
#### Totals Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`clicks`|Int|No|Total clicks|
|`impressions`|Int|No|Total impressions|
|`ctr`|Float|No|Overall Click-through Rate|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|Yes|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|Yes|Number of Completed Views|
|`video_complete_rate`|Float|Yes|Rate of Video Completion vs Partial Views|
|`view_thru_rate`|Float|Yes|View-Through Rate|

<a name="udintervals"></a>
#### Intervals Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`start_date`|String|No|Start Date of interval|
|`clicks`|Int|No|Number of clicks for interval|
|`impressions`|Int|No|Number of impressions for interval|
|`ctr`|Float|No|Click-through Rate for interval|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|Yes|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|Yes|Number of Completed Views|
|`video_complete_rate`|Float|Yes|Rate of Video Completion vs Partial Views|
|`view_thru_rate`|Float|Yes|View-Through Rate|

<a name="udcampaigns"></a>
#### Campaigns Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`name`|String|No|Campaign Name|
|`global_master_campaign_id`|String|No|Unique Identifier for Campaign|
|`organization`|String|No|Either `reachlocal` or `gannett`|
|`start_date`|String|No|Campaign Start Date|
|`end_date`|String|Yes|Campaign End Date|
|`type`|String|No|Type of Campaign|
|`status`|String|No|Status of Campaign|
|`spend`|Float|No|Total Spend for Campaign|
|`impressions`|Float|No|Total Impressions for Campaign|
|`clicks`|Float|No|Total Clicks for Campaign|
|`ctr`|Float|No|Overall Click-through Rate of Campaign|
|`cpm`|Float|No|Overall Click Per Thousand Impressions for Campaign|
|`cpc`|Float|No|Cost Per Click for Campaign|
|`walk_ins`|Float|No|Total Walk-ins for Campaign|
|`cost_per_view`|Float|No|Total Cost Per View for Campaign|
|`form_submissions_ct`|Float|No|Total For Submission Click Through for Campaign|
|`form_submissions_vt`|Float|No|Total Form Submission View Through for Campaign|
|`website_visits_vt`|Float|No|Total Website Visits View Through for Campaign|
|`cost_per_submission`|Float|No|Total Cost Per Submission for Campaign|
|`priority_page_views_ct`|Float|No|Total Priority Page View Click Through for Campaign|
|`priority_page_views_vt`|Float|No|Total Priority Page View Through for Campaign|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|No|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|No|Total Completed Views for Campaign|
|`video_complete_rate`|Float|No|Total Video Completion Rate|
|`view_thru_rate`|Float|No|Total View-Through Rate|
|`creatives`|Object|--|Object of creatives details. [Campaign Creatives Object](#udcampaigncreatives)|

<a name="udlineitems"></a>
#### Line Items Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`name`|String|No|Name of Line Item|
|`line_item_id`|Int|No|Identifier of Line Item|
|`impressions`|Int|No|Total Impressions for Line Item|
|`clicks`|Int|No|Total Clicks for Line Item|
|`ctr`|Float|No|Overall Click-through Rate of Line Item|
|`universal_interaction_rate`|Float|No|Overall Universal Interaction Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|`universal_interaction_time`|Float|No|Overall Universal Interaction Time for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|`hover_rate`|Float|No|Hover Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|`attention_quality`|Float|No|Attention Quality for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|`intervals`|Object|--|Object of line items intervals. [Line Item Intervals Object](#udlineitemintervals)|
|`creatives`|Object|--|Object of line items creatives. [Line Item Creatives Object](#udlineitemcreatives)|

<a name="udlineitemintervals"></a>
#### Line Items Intervals Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`start_date`|String|No|Start Date of Interval|
|`impressions`|Int|No|Total Impressions for Interval|
|`clicks`|Int|No|Total Clicks for Interval|
|`ctr`|Float|No|Overall Click-through Rate of Interval|
|`universal_interaction_rate`|Float|No|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`universal_interaction_time`|Float|No|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`hover_rate`|Float|No|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`attention_quality`|Float|No|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|Yes|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|Yes|Number of Completed Views|
|`video_complete_rate`|Float|Yes|Rate of Video Completion vs Partial Views|
|`view_thru_rate`|Float|Yes|View-Through Rate|

<a name="udlineitemcreatives"></a>
#### Line Items Creatives Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`creative_id`|String|No|Identifier for Creative|
|`publisher_id`|String|No|Identifier for Publisher|
|`publisher_name`|String|No|Name of Publisher|
|`name`|String|No|Name of Creative|
|`impressions`|Int|No|Total Impressions for Creative|
|`clicks`|Int|No|Total Clicks for Creative|
|`ctr`|Float|No|Overall Click-through Rate of Creative|
|`universal_interaction_rate`|Float|No|Overall Universal Interaction Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|`universal_interaction_time`|Float|No|Overall Universal Interaction Time for Creative (This MOAT metric was deprecated on 12-31-2019)|
|`hover_rate`|Float|No|Hover Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|`attention_quality`|Float|No|Attention Quality for Creative (This MOAT metric was deprecated on 12-31-2019)|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|Yes|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|Yes|Number of Completed Views|
|`video_complete_rate`|Float|Yes|Rate of Video Completion vs Partial Views|
|`view_thru_rate`|Float|Yes|View-Through Rate|
|`intervals`|Object|--|Object of line items creatives intervals. [Line Items Creatives Intervals Object](#udlineitemscreativesintervals)|

<a name="udcampaigncreatives"></a>
#### Campaign Creatives Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`creative_id`|Int|No|Identifier for Creative|
|`publisher_id`|Int|No|Identifier for Publisher|
|`publisher_name`|String|No|Name of Publisher|
|`creative_name`|String|Yes|Name of Creative|
|`creative_type`|String|No|Type of Creative|
|`creative_size`|String|No|Size of Creative|
|`spend`|Float|No|Total Spend for Campaign|
|`impressions`|Float|No|Total Impressions for Interval|
|`clicks`|Float|No|Total Clicks for Interval|
|`ctr`|Float|No|Overall Click-through Rate of Interval|
|`cpm`|Float|No|Overall Click Per Thousand Impressions for Interval|
|`cpc`|Float|No|Cost Per Click for Interval|
|`walk_ins`|Float|No|Total Walk-ins for Interval|
|`cost_per_view`|Float|No|Total Cost Per View for Campaign|
|`form_submissions_ct`|Float|No|Total For Submission Click Through for Campaign|
|`form_submissions_vt`|Float|No|Total Form Submission View Through for Campaign|
|`website_visits_vt`|Float|No|Total Website Visits View Through for Campaign|
|`cost_per_submission`|Float|No|Total Cost Per Submission for Campaign|
|`priority_page_views_ct`|Float|No|Total Priority Page View Click Through for Campaign|
|`priority_page_views_vt`|Float|No|Total Priority Page View Through for Campaign|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|No|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|No|Total Completed Views for Campaign|
|`video_complete_rate`|Float|No|Total Video Completion Rate|
|`view_thru_rate`|Float|No|Total View-Through Rate|

<a name="udlineitemscreativesintervals"></a>
#### Line Items Creatives Intervals Object
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|`start_date`|String|No|Start Date of Interval|
|`impressions`|Int|No|Total Impressions for Interval|
|`clicks`|Int|No|Total Clicks for Interval|
|`ctr`|Float|No|Overall Click-through Rate of Interval|
|`universal_interaction_rate`|Float|No|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`universal_interaction_time`|Float|No|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`hover_rate`|Float|No|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`attention_quality`|Float|No|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|`video_full_screen`|Float|Yes|Number of Full-Screen Video Views|
|`video_mute`|Float|Yes|Number of Muted Video Views|
|`video_unmute`|Float|Yes|Number of Unmuted Video Views|
|`video_pause`|Float|Yes|Number of Paused Video Views|
|`video_resume`|Float|Yes|Number of Resumed Video Views|
|`video_views`|Float|Yes|Number of Video Views|
|`total_conversions`|Float|Yes|Number of Conversions|
|`click_through_conversions`|Float|Yes|Number of Click-Through Conversions|
|`view_through_conversions`|Float|Yes|Number of View-Through Conversions|
|`video_played_to_25_pct`|Float|Yes|Number of Video Views Played to 25 percent|
|`video_played_to_50_pct`|Float|Yes|Number of Video Views Played to 50 percent|
|`video_played_to_75_pct`|Float|Yes|Number of Video Views Played to 75 percent|
|`completed_views`|Float|Yes|Number of Completed Views|
|`video_complete_rate`|Float|Yes|Rate of Video Completion vs Partial Views|
|`view_thru_rate`|Float|Yes|View-Through Rate|

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/unified_display/USA_123?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data with intervals

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/unified_display/USA_123?start_date=2016-12-01&end_date=2016-12-31&interval_size=day
```

> Response Description (with Campaigns)

```javascript
{
    "api_name": "unified_display",                                         // Name of the API
    "api_run_date": "2019-08-29",                                          // Date report was run
    "earliest_date_available": "2019-07-15",                               // How far back data is available
    "start_date": "2019-08-19",                                            // Start date of report
    "end_date": "2019-08-20",                                              // End date of report
    "time_zone": "Eastern Time (US & Canada)",                             // Time Zone
    "interval_size": "none",                                               // Interval Size ('none','day', 'calendar_week' or 'calendar_month')
    "currency": "CAD",                                                     // Currency of Report
    "global_master_advertiser_id": "CAN_123",                              // Identifier for advertiser
    "advertiser_name": "Test",                                             // Name for advertiser
    "report_data": {                                                       // Report details
        "totals": {                                                        // Total data
            "clicks": 0.0,                                                 // Total clicks
            "impressions": 0.0,                                            // Total impressions
            "ctr": 0.0,                                                    // Total click-through rate
            "video_full_screen": 0.0,                                      // Total number of full-screen video views
            "video_mute": 0.0,                                             // Total number of muted video views
            "video_unmute": 0.0,                                           // Total number of unmuted video views
            "video_pause": 0.0,                                            // Total number of paused video views
            "video_resume": 0.0,                                           // Total number of resumed video views
            "video_views": 0.0,                                            // Total number of video views
            "total_conversions": 0.0,                                      // Total number of conversions
            "click_through_conversions": 0.0,                              // Total number of click-through conversions
            "view_through_conversions": 0.0,                               // Total number of view-through conversions
            "video_played_to_25_pct": 0.0,                                 // Total number of video views played to 25 percent
            "video_played_to_50_pct": 0.0,                                 // Total number of video views played to 50 percent
            "video_played_to_75_pct": 0.0,                                 // Total number of video views played to 75 percent
            "completed_views": 0.0,                                        // Total number of completed views
            "video_complete_rate": 0.0,                                    // Total rate of video completion vs partial views
            "view_thru_rate": 0.0                                          // Total view-through rate
        },
        "campaigns": [                                                     // All data for campaigns
            {
                "name": "Test",                                            // Name of campaign
                "global_master_campaign_id": "CAN_123",                    // Identifier for campaign
                "organization": "reachlocal",                              // Either 'reachlocal' or 'gannett'
                "start_date": "2019-05-21",                                // Campaign start date
                "end_date": null,                                          // Campaign end date
                "type": "display",                                         // Type of campaign
                "status": "running",                                       // Status of campaign
                "spend": 0.0,                                              // Total spend for campaign
                "impressions": 0.0,                                        // Total impressions for campaign
                "clicks": 0.0,                                             // Total clicks for campaign
                "ctr": 0.0,                                                // Overall click-through rate of campaign
                "cpm": 0.0,                                                // Overall click per thousand impressions for campaign
                "cpc": 0.0,                                                // Cost per click for campaign
                "walk_ins": 0.0,                                           // Total walk-ins for campaign
                "cost_per_view": 0,                                        // Total cost per view for campaign
                "form_submissions_ct": 0.0,                                // Total form submission click-through for campaign
                "form_submissions_vt": 0.0,                                // Total form submission view-through for campaign
                "website_visits_vt": 0.0,                                  // Total website visits view-through for campaign
                "cost_per_submission": 0,                                  // Total cost per submission for campaign
                "priority_page_views_ct": 0.0,                             // Total priority page view click-through for campaign
                "priority_page_views_vt": 0.0,                             // Total priority page view-through for campaign
                "video_full_screen": 0.0,                                  // Number of full-screen video views for campaign
                "video_mute": 0.0,                                         // Number of muted video views for campaign
                "video_unmute": 0.0,                                       // Number of unmuted video views for campaign
                "video_pause": 0.0,                                        // Number of paused video views for campaign
                "video_resume": 0.0,                                       // Number of resumed video views for campaign
                "video_views": 0.0,                                        // Number of video views for campaign
                "total_conversions": 0.0,                                  // Number of conversions for campaign
                "click_through_conversions": 0.0,                          // Number of click-through conversions for campaign
                "view_through_conversions": 0.0,                           // Number of view-through conversions for campaign
                "video_played_to_25_pct": 0.0,                             // Number of video views played to 25 percent for campaign
                "video_played_to_50_pct": 0.0,                             // Number of video views played to 50 percent for campaign
                "video_played_to_75_pct": 0.0,                             // Number of video views played to 75 percent for campaign
                "completed_views": 0.0,                                    // Number of completed views for campaign
                "video_complete_rate": 0.0,                                // Rate of video completion vs partial views
                "view_thru_rate": 0.0,                                     // View-through rate
                "creatives": [                                             // All data for creatives
                    {
                        "creative_id": 1180668,                            // Identifier for creative
                        "publisher_id": 49,                                // Identifier for publisher
                        "publisher_name": "Simpli.fi Remarketing",         // Name of publisher
                        "creative_name": null,                             // Name of creative
                        "creative_type": "Third Party Ad",                 // Type of creative
                        "creative_size": "160x600",                        // Size of creative
                        "spend": 0.0,                                      // Total spend for campaign
                        "impressions": 0.0,                                // Total impressions for interval
                        "clicks": 0.0,                                     // Total clicks for interval
                        "ctr": 0.0,                                        // Overall click-through rate of interval
                        "cpm": 0.0,                                        // Overall click per thousand impressions for interval
                        "cpc": 0.0,                                        // Cost per click for interval
                        "walk_ins": 0.0,                                   // Total walk-ins for interval
                        "cost_per_view": 0,                                // Total cost per view for interval
                        "form_submissions_ct": 0.0,                        // Total form submission click-through for interval
                        "form_submissions_vt": 0.0,                        // Total form submission view-through for interval
                        "website_visits_vt": 0.0,                          //Total website visits view-through for interval
                        "cost_per_submission": 0,                          // Total cost per submission for interval
                        "priority_page_views_ct": 0.0,                     // Total priority page view click-through for interval
                        "priority_page_views_vt": 0.0,                     // Total priority page view-through for interval
                        "video_full_screen": 0.0,                          // Number of full-screen video views for creative
                        "video_mute": 0.0,                                 // Number of muted video views for creative
                        "video_unmute": 0.0,                               // Number of unmuted video views for creative
                        "video_pause": 0.0,                                // Number of paused video views for creative
                        "video_resume": 0.0,                               // Number of resumed video views for creative
                        "video_views": 0.0,                                // Number of video views for creative
                        "total_conversions": 0.0,                          // Number of conversions for creative
                        "click_through_conversions": 0.0,                  // Number of click-through conversions for creative
                        "view_through_conversions": 0.0,                   // Number of view-through conversions for creative
                        "video_played_to_25_pct": 0.0,                     // Number of video views played to 25 percent for creative
                        "video_played_to_50_pct": 0.0,                     // Number of video views played to 50  percent for creative
                        "video_played_to_75_pct": 0.0,                     // Number of video views played to 75 percent for creative
                        "completed_views": 0.0,                            // Number of completed views for creative
                        "video_complete_rate": 0.0,                        // Rate of video completion vs partial views for creative
                        "view_thru_rate": 0.0                              // View-through rate for creative
                    }
                ]
            }
        ],
        "line_items": []                                                   // All data for line items
    }
}
```

> Response Description (with Line Items)
> Response Description Before and Including 12-31-2019

```javascript
{
    "api_name": "unified_display",                                         // Name of the API
    "api_run_date": "2019-08-29",                                          // Date report was run
    "earliest_date_available": "2019-04-20",                               // How far back data is available
    "start_date": "2019-08-19",                                            // Start date of report
    "end_date": "2019-08-20",                                              // End date of report
    "time_zone": "America/Los_Angeles",                                    // Time Zone
    "interval_size": "day",                                                // Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')
    "currency": "USD",                                                     // Currency of Report
    "global_master_advertiser_id": "USA_123",                              // Identifier for advertiser
    "advertiser_name": "TEST",                                             // Name for advertiser
    "report_data": {                                                       // Report details
        "totals": {                                                        // Total data
            "clicks": 0,                                                   // Total clicks
            "impressions": 0,                                              // Total impressions
            "ctr": 0.0                                                     // Total click-through rate
        },
        "intervals": [                                                     // Data for specified interval
            {
                "start_date": "2019-08-19",                                // Start date of interval
                "clicks": 0,                                               // Clicks for interval
                "impressions": 0,                                          // Impressions for interval
                "ctr": 0.0,                                                // Click-through rate
                "video_full_screen": 0.0,                                  // Number of full-screen video views for interval
                "video_mute": 0.0,                                         // Number of muted video views for interval
                "video_unmute": 0.0,                                       // Number of unmuted video views for interval
                "video_pause": 0.0,                                        // Number of paused video views for interval
                "video_resume": 0.0,                                       // Number of resumed video views for interval
                "video_views": 0.0,                                        // Number of video views for interval
                "total_conversions": 0.0,                                  // Number of conversions for interval
                "click_through_conversions": 0.0,                          // Number of click-through conversions for interval
                "view_through_conversions": 0.0,                           // Number of view-through conversions for interval
                "video_played_to_25_pct": 0.0,                             // Number of video views played to 25 percent for interval
                "video_played_to_50_pct": 0.0,                             // Number of video views played to 50 percent for interval
                "video_played_to_75_pct": 0.0,                             // Number of video views played to 75 percent for interval
                "completed_views": 0.0,                                    // Number of completed views for interval
                "video_complete_rate": 0.0,                                // Rate of video completion vs partial views for interval
                "view_thru_rate": 0.0                                      // View-through rate for interval
            }
        ],
        "campaigns": [],                                                   // All data for campaigns
        "line_items": [                                                    // All data for line items
            {
                "name": "Test",                                            // Name of line item
                "line_item_id": 1516054,                                   // Identifier of line item
                "impressions": 0,                                          // Total impressions for line item
                "clicks": 0,                                               // Total clicks for line item
                "ctr": 0.0,                                                // Overall click-through rate of line item
                "universal_interaction_rate": 0.0,                         // Overall universal interaction rate of line item
                "universal_interaction_time": 0.0,                         // Overall universal interaction time for line item
                "hover_rate": 0.0,                                         // Hover rate for line item
                "attention_quality": 0.0,                                  // Attention quality for line item
                "intervals": [                                             // Data for specified interval
                    {
                        "start_date": "2019-08-19",                        // Start date of interval
                        "impressions": 0,                                  // Impressions for interval
                        "clicks": 0,                                       // Clicks for interval
                        "ctr": 0.0,                                        // Click-through rate
                        "universal_interaction_rate": 0.0,                 // Overall universal interaction rate for interval
                        "universal_interaction_time": 0.0,                 // Overall universal interaction time for interval
                        "hover_rate": 0.0,                                 // Hover rate for interval
                        "attention_quality": 0.0,                          // Attention quality for interval
                        "video_full_screen": 0.0,                          // Number of full-screen video views for interval
                        "video_mute": 0.0,                                 // Number of muted video views for interval
                        "video_unmute": 0.0,                               // Number of unmuted video views for interval
                        "video_pause": 0.0,                                // Number of paused video views for interval
                        "video_resume": 0.0,                               // Number of resumed video views for interval
                        "video_views": 0.0,                                // Number of video views for interval
                        "total_conversions": 0.0,                          // Number of conversions for interval
                        "click_through_conversions": 0.0,                  // Number of click-through conversions for interval
                        "view_through_conversions": 0.0,                   // Number of view-through conversions for interval
                        "video_played_to_25_pct": 0.0,                     // Number of video views played to 25 percent for interval
                        "video_played_to_50_pct": 0.0,                     // Number of video views played to 50 percent for interval
                        "video_played_to_75_pct": 0.0,                     // Number of video views played to 75 percent for interval
                        "completed_views": 0.0,                            // Number of completed views for interval
                        "video_complete_rate": 0.0,                        // Rate of video completion vs partial view for interval
                        "view_thru_rate": 0.0                              // View-through rate
                    }
                ],
                "creatives": [                                             // All data for creatives
                    {
                        "creative_id": 12881938,                           // Identifier for creative
                        "publisher_id": 1777,                              // Identifier for publisher
                        "publisher_name": "Simpli.fi Remarketing",         // Name of publisher
                        "name": "Test",                                    // Name of creative
                        "impressions": 0,                                  // Total impressions for creative
                        "clicks": 0,                                       // Total clicks for creative
                        "ctr": 0.0,                                        // Overall click-through rate for creative
                        "universal_interaction_rate": 0.0,                 // Overall universal interaction rate for creative
                        "universal_interaction_time": 0.0,                 // Overall universal interaction time for creative
                        "hover_rate": 0.0,                                 // Hover rate for creative
                        "attention_quality": 0.0,                          // Attention quality for creative
                        "video_full_screen": 0.0,                          // Number of full-screen video views for creative
                        "video_mute": 0.0,                                 // Number of muted video views for creative
                        "video_unmute": 0.0,                               // Number of unmuted video views for creative
                        "video_pause": 0.0,                                // Number of paused video views for creative
                        "video_resume": 0.0,                               // Number of resumed video views for creative
                        "video_views": 0.0,                                // Number of video views for creative
                        "total_conversions": 0.0,                          // Number of conversions for creative
                        "click_through_conversions": 0.0,                  // Number of click-through conversions for creative
                        "view_through_conversions": 0.0,                   // Number of view-through conversions for creative
                        "video_played_to_25_pct": 0.0,                     // Number of video views played to 25 percent for creative
                        "video_played_to_50_pct": 0.0,                     // Number of video views played to 50 percent for creative
                        "video_played_to_75_pct": 0.0,                     // Number of video views played to 75 percent for creative
                        "completed_views": 0.0,                            // Number of completed views for creative
                        "video_complete_rate": 0.0,                        // View Rte of video completion vs partial views for creative
                        "view_thru_rate": 0.0,                             // View-through rate
                        "intervals": [                                     // Data for specified interval
                            {
                                "start_date": "2019-08-19",                // Start date of interval
                                "impressions": 0,                          // Total impressions for interval
                                "clicks": 0,                               // Total clicks for interval
                                "ctr": 0.0,                                // Overall click-through rate of interval
                                "universal_interaction_rate": 0.0,         // Overall universal interaction rate for interval
                                "universal_interaction_time": 0.0,         // Overall universal interaction time for interval
                                "hover_rate": 0.0,                         // Hover rate for interval
                                "attention_quality": 0.0,                  // Attention quality for interval
                                "video_full_screen": 0.0,                  // Number of full-screen video views for interval
                                "video_mute": 0.0,                         // Number of muted video views for interval
                                "video_unmute": 0.0,                       // Number of unmuted video views for interval
                                "video_pause": 0.0,                        // Number of paused video views for interval
                                "video_resume": 0.0,                       // Number of resumed video views for interval
                                "video_views": 0.0,                        // Number of video views for interval
                                "total_conversions": 0.0,                  // Number of conversions for interval
                                "click_through_conversions": 0.0,          // Number of click-through conversions for interval
                                "view_through_conversions": 0.0,           // Number of view-through conversions for interval
                                "video_played_to_25_pct": 0.0,             // Number of video views played to 25 percent for interval
                                "video_played_to_50_pct": 0.0,             // Number of video views played to 50 percent for interval
                                "video_played_to_75_pct": 0.0,             // Number of video views played to 75 percent for interval
                                "completed_views": 0.0,                    // Number of completed views for interval
                                "video_complete_rate": 0.0,                // Rate of video completion vs partial views for interval
                                "view_thru_rate": 0.0                      // View-through rate for interval
                            }
                        ]
                    }
                ]
            }
        ]
    }
}
```

> Response Description After 12-31-2019

```javascript
{
    "api_name": "unified_display",                                         // Name of the API
    "api_run_date": "2019-08-29",                                          // Date report was run
    "earliest_date_available": "2019-04-20",                               // How far back data is available
    "start_date": "2019-08-19",                                            // Start date of report
    "end_date": "2019-08-20",                                              // End date of report
    "time_zone": "America/Los_Angeles",                                    // Time Zone
    "interval_size": "day",                                                // Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')
    "currency": "USD",                                                     // Currency of Report
    "global_master_advertiser_id": "USA_123",                              // Identifier for advertiser
    "advertiser_name": "TEST",                                             // Name for advertiser
    "report_data": {                                                       // Report details
        "totals": {                                                        // Total data
            "clicks": 0,                                                   // Total clicks
            "impressions": 0,                                              // Total impressions
            "ctr": 0.0                                                     // Total click-through rate
        },
        "intervals": [                                                     // Data for specified interval
            {
                "start_date": "2019-08-19",                                // Start date of interval
                "clicks": 0,                                               // Clicks for interval
                "impressions": 0,                                          // Impressions for interval
                "ctr": 0.0,                                                // Click-through rate
                "video_full_screen": 0.0,                                  // Number of full-screen video views for interval
                "video_mute": 0.0,                                         // Number of muted video views for interval
                "video_unmute": 0.0,                                       // Number of unmuted video views for interval
                "video_pause": 0.0,                                        // Number of paused video views for interval
                "video_resume": 0.0,                                       // Number of resumed video views for interval
                "video_views": 0.0,                                        // Number of video views for interval
                "total_conversions": 0.0,                                  // Number of conversions for interval
                "click_through_conversions": 0.0,                          // Number of click-through conversions for interval
                "view_through_conversions": 0.0,                           // Number of view-through conversions for interval
                "video_played_to_25_pct": 0.0,                             // Number of video views played to 25 percent for interval
                "video_played_to_50_pct": 0.0,                             // Number of video views played to 50 percent for interval
                "video_played_to_75_pct": 0.0,                             // Number of video views played to 75 percent for interval
                "completed_views": 0.0,                                    // Number of completed views for interval
                "video_complete_rate": 0.0,                                // Rate of video completion vs partial views for interval
                "view_thru_rate": 0.0                                      // View-through rate for interval
            }
        ],
        "campaigns": [],                                                   // All data for campaigns
        "line_items": [                                                    // All data for line items
            {
                "name": "Test",                                            // Name of line item
                "line_item_id": 1516054,                                   // Identifier of line item
                "impressions": 0,                                          // Total impressions for line item
                "clicks": 0,                                               // Total clicks for line item
                "ctr": 0.0,                                                // Overall click-through rate of line item
                "intervals": [                                             // Data for specified interval
                    {
                        "start_date": "2019-08-19",                        // Start date of interval
                        "impressions": 0,                                  // Impressions for interval
                        "clicks": 0,                                       // Clicks for interval
                        "ctr": 0.0,                                        // Click-through rate
                        "video_full_screen": 0.0,                          // Number of full-screen video views for interval
                        "video_mute": 0.0,                                 // Number of muted video views for interval
                        "video_unmute": 0.0,                               // Number of unmuted video views for interval
                        "video_pause": 0.0,                                // Number of paused video views for interval
                        "video_resume": 0.0,                               // Number of resumed video views for interval
                        "video_views": 0.0,                                // Number of video views for interval
                        "total_conversions": 0.0,                          // Number of conversions for interval
                        "click_through_conversions": 0.0,                  // Number of click-through conversions for interval
                        "view_through_conversions": 0.0,                   // Number of view-through conversions for interval
                        "video_played_to_25_pct": 0.0,                     // Number of video views played to 25 percent for interval
                        "video_played_to_50_pct": 0.0,                     // Number of video views played to 50 percent for interval
                        "video_played_to_75_pct": 0.0,                     // Number of video views played to 75 percent for interval
                        "completed_views": 0.0,                            // Number of completed views for interval
                        "video_complete_rate": 0.0,                        // Rate of video completion vs partial view for interval
                        "view_thru_rate": 0.0                              // View-through rate
                    }
                ],
                "creatives": [                                             // All data for creatives
                    {
                        "creative_id": 12881938,                           // Identifier for creative
                        "publisher_id": 1777,                              // Identifier for publisher
                        "publisher_name": "Simpli.fi Remarketing",         // Name of publisher
                        "name": "Test",                                    // Name of creative
                        "impressions": 0,                                  // Total impressions for creative
                        "clicks": 0,                                       // Total clicks for creative
                        "ctr": 0.0,                                        // Overall click-through rate for creative
                        "video_full_screen": 0.0,                          // Number of full-screen video views for creative
                        "video_mute": 0.0,                                 // Number of muted video views for creative
                        "video_unmute": 0.0,                               // Number of unmuted video views for creative
                        "video_pause": 0.0,                                // Number of paused video views for creative
                        "video_resume": 0.0,                               // Number of resumed video views for creative
                        "video_views": 0.0,                                // Number of video views for creative
                        "total_conversions": 0.0,                          // Number of conversions for creative
                        "click_through_conversions": 0.0,                  // Number of click-through conversions for creative
                        "view_through_conversions": 0.0,                   // Number of view-through conversions for creative
                        "video_played_to_25_pct": 0.0,                     // Number of video views played to 25 percent for creative
                        "video_played_to_50_pct": 0.0,                     // Number of video views played to 50 percent for creative
                        "video_played_to_75_pct": 0.0,                     // Number of video views played to 75 percent for creative
                        "completed_views": 0.0,                            // Number of completed views for creative
                        "video_complete_rate": 0.0,                        // View Rte of video completion vs partial views for creative
                        "view_thru_rate": 0.0,                             // View-through rate
                        "intervals": [                                     // Data for specified interval
                            {
                                "start_date": "2019-08-19",                // Start date of interval
                                "impressions": 0,                          // Total impressions for interval
                                "clicks": 0,                               // Total clicks for interval
                                "ctr": 0.0,                                // Overall click-through rate of interval
                                "video_full_screen": 0.0,                  // Number of full-screen video views for interval
                                "video_mute": 0.0,                         // Number of muted video views for interval
                                "video_unmute": 0.0,                       // Number of unmuted video views for interval
                                "video_pause": 0.0,                        // Number of paused video views for interval
                                "video_resume": 0.0,                       // Number of resumed video views for interval
                                "video_views": 0.0,                        // Number of video views for interval
                                "total_conversions": 0.0,                  // Number of conversions for interval
                                "click_through_conversions": 0.0,          // Number of click-through conversions for interval
                                "view_through_conversions": 0.0,           // Number of view-through conversions for interval
                                "video_played_to_25_pct": 0.0,             // Number of video views played to 25 percent for interval
                                "video_played_to_50_pct": 0.0,             // Number of video views played to 50 percent for interval
                                "video_played_to_75_pct": 0.0,             // Number of video views played to 75 percent for interval
                                "completed_views": 0.0,                    // Number of completed views for interval
                                "video_complete_rate": 0.0,                // Rate of video completion vs partial views for interval
                                "view_thru_rate": 0.0                      // View-through rate for interval
                            }
                        ]
                    }
                ]
            }
        ]
    }
}
```
