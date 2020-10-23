### **Display Campaign Metrics**
<a name="unified_display"></a>

### Resource Overview&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/unified_display/[gmaid]?[query_params]|


This is a Display Metrics API that can be used by customers that have Display campaigns from either the ReachLocal or Gannett brand. All metrics are reported at the creative level, and aggregated at the Interval/Campaign level for ReachLocal brand or Line Item level for the Gannett brand. When data is unavailable, corresponding property will not be present in the response. For example, if we do not have data for a creative_type or creative_size, it will not be present in the response.

**Note:** We recommend users to migrate to this API in place of the Display Activity API and Display Creative API as they will no longer be updated.

**Note:** MOAT metrics are not supported after December 31, 2019. Any requests for date ranges after this will not include MOAT metrics. Date ranges that span beyond December 31, 2019 will show calculations based on start_date through December 31, 2019.

Use GET to retrieve information for the Unified Display API that will retrieve metrics on display campaigns. Data can be returned for a GMAID for a specific date range determined by start_date and end_date. Data can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Default|Description|
|---|---|---|---|
|start_date|Yes|--|Restricts the results to those occurring on or after this date|
|end_date|Yes|--|Restricts the results to those occurring on or before this date|
|interval_size|No|none|Specifies the type of interval: none, day, calendar_week, or calendar_month|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

### Response Data Details&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/unified_display/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data with intervals

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/unified_display/TEST_1?start_date=2016-12-01&end_date=2016-12-31&interval_size=day
```

> Example Response

```json
{
    "api_name": "unified_display",
    "api_run_date": "2020-10-16",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "none",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "totals": {
            "clicks": 31,
            "impressions": 2607,
            "ctr": 1.19,
            "video_full_screen": 30,
            "video_mute": 10,
            "video_unmute": 25,
            "video_pause": 10,
            "video_resume": 25,
            "video_views": 41,
            "total_conversions": 39,
            "click_through_conversions": 34,
            "view_through_conversions": 45,
            "video_played_to_25_pct": 20,
            "video_played_to_50_pct": 25,
            "video_played_to_75_pct": 30,
            "completed_views": 35,
            "video_complete_rate": 85.37,
            "view_thru_rate": 1.34
        },
        "campaigns": [
            {
                "name": "Display Campaign (Demo)",
                "global_master_campaign_id": "TEST_691177",
                "organization": "reachlocal",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "spend": 25,
                "impressions": 1147,
                "clicks": 11,
                "form_submissions_ct": 9,
                "form_submissions_vt": 11,
                "priority_page_views_ct": 8,
                "priority_page_views_vt": 7,
                "website_visits_vt": 7,
                "walk_ins": 0,
                "ctr": 0.96,
                "cpm": 21.8,
                "cpc": 2.27,
                "cost_per_submission": 1.25,
                "video_full_screen": 6,
                "video_mute": 2,
                "video_unmute": 5,
                "video_pause": 2,
                "video_resume": 5,
                "video_views": 8,
                "total_conversions": 7,
                "click_through_conversions": 22,
                "view_through_conversions": 25,
                "video_played_to_25_pct": 4,
                "video_played_to_50_pct": 5,
                "video_played_to_75_pct": 6,
                "completed_views": 7,
                "video_complete_rate": 87.5,
                "view_thru_rate": 0.61,
                "cost_per_view": 3.57,
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 49,
                        "publisher_name": "Simpli.fi API",
                        "creative_name": "Creative (Demo) 1",
                        "creative_type": "Image",
                        "creative_size": "300x250",
                        "spend": 3.24,
                        "impressions": 49,
                        "clicks": 10,
                        "form_submissions_ct": 8,
                        "form_submissions_vt": 9,
                        "priority_page_views_ct": 7,
                        "priority_page_views_vt": 4,
                        "website_visits_vt": 7,
                        "walk_ins": 0,
                        "ctr": 20.41,
                        "cpm": 66.12,
                        "cpc": 0.32,
                        "cost_per_submission": 0.19,
                        "div": 32.0,
                        "cpdiv": 2.64,
                        "video_full_screen": 4,
                        "video_mute": 2,
                        "video_unmute": 4,
                        "video_pause": 2,
                        "video_resume": 5,
                        "video_views": 5,
                        "total_conversions": 6,
                        "click_through_conversions": 16,
                        "view_through_conversions": 20,
                        "video_played_to_25_pct": 1,
                        "video_played_to_50_pct": 4,
                        "video_played_to_75_pct": 1,
                        "completed_views": 1,
                        "video_complete_rate": 20,
                        "view_thru_rate": 2.04,
                        "cost_per_view": 3.24
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 49,
                        "publisher_name": "Simpli.fi API",
                        "creative_name": "Creative (Demo) 2",
                        "creative_type": "Image",
                        "creative_size": "300x250",
                        "spend": 21.76,
                        "impressions": 1098,
                        "clicks": 1,
                        "form_submissions_ct": 1,
                        "form_submissions_vt": 2,
                        "priority_page_views_ct": 1,
                        "priority_page_views_vt": 3,
                        "website_visits_vt": 0,
                        "walk_ins": 0,
                        "ctr": 0.09,
                        "cpm": 19.82,
                        "cpc": 21.76,
                        "cost_per_submission": 7.25,
                        "div": 32.0,
                        "cpdiv": 2.64,
                        "video_full_screen": 2,
                        "video_mute": 0,
                        "video_unmute": 1,
                        "video_pause": 0,
                        "video_resume": 0,
                        "video_views": 3,
                        "total_conversions": 1,
                        "click_through_conversions": 6,
                        "view_through_conversions": 5,
                        "video_played_to_25_pct": 3,
                        "video_played_to_50_pct": 1,
                        "video_played_to_75_pct": 5,
                        "completed_views": 6,
                        "video_complete_rate": 200,
                        "view_thru_rate": 0.55,
                        "cost_per_view": 3.63
                    }
                ]
            }
        ],
        "line_items": [
            {
                "name": "Line Item (Demo) 1",
                "line_item_id": 1,
                "impressions": 509,
                "clicks": 4,
                "ctr": 0.79,
                "video_full_screen": 12,
                "video_mute": 4,
                "video_unmute": 10,
                "video_pause": 4,
                "video_resume": 10,
                "video_views": 17,
                "total_conversions": 16,
                "click_through_conversions": 6,
                "view_through_conversions": 10,
                "video_played_to_25_pct": 8,
                "video_played_to_50_pct": 10,
                "video_played_to_75_pct": 12,
                "completed_views": 14,
                "video_complete_rate": 82.35,
                "view_thru_rate": 2.75,
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 1",
                        "impressions": 146,
                        "clicks": 0,
                        "ctr": 0,
                        "video_full_screen": 6,
                        "video_mute": 2,
                        "video_unmute": 5,
                        "video_pause": 2,
                        "video_resume": 5,
                        "video_views": 10,
                        "total_conversions": 8,
                        "click_through_conversions": 3,
                        "view_through_conversions": 5,
                        "video_played_to_25_pct": 4,
                        "video_played_to_50_pct": 5,
                        "video_played_to_75_pct": 6,
                        "completed_views": 7,
                        "video_complete_rate": 70,
                        "view_thru_rate": 4.79
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 2",
                        "impressions": 363,
                        "clicks": 4,
                        "ctr": 1.1,
                        "video_full_screen": 6,
                        "video_mute": 2,
                        "video_unmute": 5,
                        "video_pause": 2,
                        "video_resume": 5,
                        "video_views": 7,
                        "total_conversions": 8,
                        "click_through_conversions": 3,
                        "view_through_conversions": 5,
                        "video_played_to_25_pct": 4,
                        "video_played_to_50_pct": 5,
                        "video_played_to_75_pct": 6,
                        "completed_views": 7,
                        "video_complete_rate": 100,
                        "view_thru_rate": 1.93
                    }
                ]
            },
            {
                "name": "Line Item (Demo) 2",
                "line_item_id": 2,
                "impressions": 951,
                "clicks": 16,
                "ctr": 1.68,
                "video_full_screen": 12,
                "video_mute": 4,
                "video_unmute": 10,
                "video_pause": 4,
                "video_resume": 10,
                "video_views": 16,
                "total_conversions": 16,
                "click_through_conversions": 6,
                "view_through_conversions": 10,
                "video_played_to_25_pct": 8,
                "video_played_to_50_pct": 10,
                "video_played_to_75_pct": 12,
                "completed_views": 14,
                "video_complete_rate": 87.5,
                "view_thru_rate": 1.47,
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 1",
                        "impressions": 419,
                        "clicks": 5,
                        "ctr": 1.19,
                        "video_full_screen": 6,
                        "video_mute": 2,
                        "video_unmute": 5,
                        "video_pause": 2,
                        "video_resume": 5,
                        "video_views": 8,
                        "total_conversions": 8,
                        "click_through_conversions": 3,
                        "view_through_conversions": 5,
                        "video_played_to_25_pct": 4,
                        "video_played_to_50_pct": 5,
                        "video_played_to_75_pct": 6,
                        "completed_views": 7,
                        "video_complete_rate": 87.5,
                        "view_thru_rate": 1.67
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 2",
                        "impressions": 532,
                        "clicks": 11,
                        "ctr": 2.07,
                        "video_full_screen": 6,
                        "video_mute": 2,
                        "video_unmute": 5,
                        "video_pause": 2,
                        "video_resume": 5,
                        "video_views": 8,
                        "total_conversions": 8,
                        "click_through_conversions": 3,
                        "view_through_conversions": 5,
                        "video_played_to_25_pct": 4,
                        "video_played_to_50_pct": 5,
                        "video_played_to_75_pct": 6,
                        "completed_views": 7,
                        "video_complete_rate": 87.5,
                        "view_thru_rate": 1.32
                    }
                ]
            }
        ]
    }
}
```

|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|interval_size|String|Interval Size (none, day, calendar_week, or calendar_month)|
|currency|String|Currency for Advertiser|
|global_master_advertiser_id|String|Identifier for Advertiser|
|advertiser_name|String|Name of Advertiser|
|report_data|Object|[Report Data Object (with Line Items)](#udlineitemsreportdata) or [Report Data Object (with Campaigns)](#udcampaignsreportdata)|

<a name="udlineitemsreportdata"></a>
**Report Data Object (with Line Items)**

|Field Name|Datatype|Description|
|---|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#udtotals)|
|intervals|Object|Object of intervals details. [Intervals Object](#udintervals)|
|campaigns|Object|Object of campaigns details. [Campaigns Object](#udcampaigns)|
|line_items|Object|Object of line items details. [Line Items Object](#udlineitems)|

<a name="udcampaignsreportdata"></a>
**Report Data Object (with Campaigns)**

|Field Name|Datatype|Description|
|---|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#udtotals)|
|campaigns|Object|Object of campaigns details. [Campaigns Object](#udcampaigns)|
|line_items|Object|Object of line items details. [Line Items Object](#udlineitems)|

<a name="udtotals"></a>
**Totals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|clicks|Int|No|Total clicks|
|impressions|Int|No|Total impressions|
|ctr|Float|No|Overall Click-through Rate|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|Yes|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|Yes|Number of Completed Views|
|video_complete_rate|Float|Yes|Rate of Video Completion vs Partial Views|
|view_thru_rate|Float|Yes|View-Through Rate|

<a name="udintervals"></a>
**Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date of interval|
|clicks|Int|No|Number of clicks for interval|
|impressions|Int|No|Number of impressions for interval|
|ctr|Float|No|Click-through Rate for interval|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|Yes|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|Yes|Number of Completed Views|
|video_complete_rate|Float|Yes|Rate of Video Completion vs Partial Views|
|view_thru_rate|Float|Yes|View-Through Rate|

<a name="udcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|global_master_campaign_id|String|No|Unique Identifier for Campaign|
|organization|String|No|Either reachlocal or gannett|
|start_date|String|No|Campaign Start Date|
|end_date|String|Yes|Campaign End Date|
|type|String|No|Type of Campaign|
|status|String|No|Status of Campaign|
|spend|Float|No|Total Spend for Campaign|
|impressions|Float|No|Total Impressions for Campaign|
|clicks|Float|No|Total Clicks for Campaign|
|ctr|Float|No|Overall Click-through Rate of Campaign|
|cpm|Float|No|Overall Click Per Thousand Impressions for Campaign|
|cpc|Float|No|Cost Per Click for Campaign|
|walk_ins|Float|No|Total Walk-ins for Campaign|
|cost_per_view|Float|No|Total Cost Per View for Campaign|
|form_submissions_ct|Float|No|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|No|Total Form Submission View Through for Campaign|
|website_visits_vt|Float|No|Total Website Visits View Through for Campaign|
|cost_per_submission|Float|No|Total Cost Per Submission for Campaign|
|priority_page_views_ct|Float|No|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|No|Total Priority Page View Through for Campaign|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|No|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|No|Total Completed Views for Campaign|
|video_complete_rate|Float|No|Total Video Completion Rate|
|view_thru_rate|Float|No|Total View-Through Rate|
|cost_per_view|Float|No|Cost per View|
|div|Float|No|Display-Influenced Visits|
|cpdiv|Float|No|Cost per Display-Influenced Visit|
|creatives|Object|--|Object of creatives details. [Campaign Creatives Object](#udcampaigncreatives)|

<a name="udlineitems"></a>
**Line Items Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Name of Line Item|
|line_item_id|Int|No|Identifier of Line Item|
|impressions|Int|No|Total Impressions for Line Item|
|clicks|Int|No|Total Clicks for Line Item|
|ctr|Float|No|Overall Click-through Rate of Line Item|
|universal_interaction_rate|Float|No|Overall Universal Interaction Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|No|Overall Universal Interaction Time for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|No|Hover Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|No|Attention Quality for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|intervals|Object|--|Object of line items intervals. [Line Item Intervals Object](#udlineitemintervals)|
|creatives|Object|--|Object of line items creatives. [Line Item Creatives Object](#udlineitemcreatives)|

<a name="udlineitemintervals"></a>
**Line Items Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date of Interval|
|impressions|Int|No|Total Impressions for Interval|
|clicks|Int|No|Total Clicks for Interval|
|ctr|Float|No|Overall Click-through Rate of Interval|
|universal_interaction_rate|Float|No|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|No|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|No|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|No|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|Yes|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|Yes|Number of Completed Views|
|video_complete_rate|Float|Yes|Rate of Video Completion vs Partial Views|
|view_thru_rate|Float|Yes|View-Through Rate|
|cost_per_view|Float|No|Cost per View|

<a name="udlineitemcreatives"></a>
**Line Items Creatives Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|creative_id|String|No|Identifier for Creative|
|publisher_id|String|No|Identifier for Publisher|
|publisher_name|String|No|Name of Publisher|
|name|String|No|Name of Creative|
|impressions|Int|No|Total Impressions for Creative|
|clicks|Int|No|Total Clicks for Creative|
|ctr|Float|No|Overall Click-through Rate of Creative|
|universal_interaction_rate|Float|No|Overall Universal Interaction Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|No|Overall Universal Interaction Time for Creative (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|No|Hover Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|No|Attention Quality for Creative (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|Yes|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|Yes|Number of Completed Views|
|video_complete_rate|Float|Yes|Rate of Video Completion vs Partial Views|
|view_thru_rate|Float|Yes|View-Through Rate|
|cost_per_view|Float|No|Cost per View|
|intervals|Object|--|Object of line items creatives intervals. [Line Items Creatives Intervals Object](#udlineitemscreativesintervals)|

<a name="udcampaigncreatives"></a>
**Campaign Creatives Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|creative_id|Int|No|Identifier for Creative|
|publisher_id|Int|No|Identifier for Publisher|
|publisher_name|String|No|Name of Publisher|
|creative_name|String|Yes|Name of Creative|
|creative_type|String|No|Type of Creative|
|creative_size|String|No|Size of Creative|
|spend|Float|No|Total Spend for Campaign|
|impressions|Float|No|Total Impressions for Interval|
|clicks|Float|No|Total Clicks for Interval|
|ctr|Float|No|Overall Click-through Rate of Interval|
|cpm|Float|No|Overall Click Per Thousand Impressions for Interval|
|cpc|Float|No|Cost Per Click for Interval|
|walk_ins|Float|No|Total Walk-ins for Interval|
|cost_per_view|Float|No|Total Cost Per View for Campaign|
|form_submissions_ct|Float|No|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|No|Total Form Submission View Through for Campaign|
|website_visits_vt|Float|No|Total Website Visits View Through for Campaign|
|cost_per_submission|Float|No|Total Cost Per Submission for Campaign|
|priority_page_views_ct|Float|No|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|No|Total Priority Page View Through for Campaign|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|No|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|No|Total Completed Views for Campaign|
|video_complete_rate|Float|No|Total Video Completion Rate|
|view_thru_rate|Float|No|Total View-Through Rate|
|cost_per_view|Float|No|Cost per View|
|div|Float|No|Display-Influenced Visits|
|cpdiv|Float|No|Cost per Display-Influenced Visit|

<a name="udlineitemscreativesintervals"></a>
**Line Items Creatives Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date of Interval|
|impressions|Int|No|Total Impressions for Interval|
|clicks|Int|No|Total Clicks for Interval|
|ctr|Float|No|Overall Click-through Rate of Interval|
|universal_interaction_rate|Float|No|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|No|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|No|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|No|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Yes|Number of Full-Screen Video Views|
|video_mute|Float|Yes|Number of Muted Video Views|
|video_unmute|Float|Yes|Number of Unmuted Video Views|
|video_pause|Float|Yes|Number of Paused Video Views|
|video_resume|Float|Yes|Number of Resumed Video Views|
|video_views|Float|Yes|Number of Video Views|
|total_conversions|Float|Yes|Number of Conversions|
|click_through_conversions|Float|Yes|Number of Click-Through Conversions|
|view_through_conversions|Float|Yes|Number of View-Through Conversions|
|video_played_to_25_pct|Float|Yes|Number of Video Views Played to 25 percent|
|video_played_to_50_pct|Float|Yes|Number of Video Views Played to 50 percent|
|video_played_to_75_pct|Float|Yes|Number of Video Views Played to 75 percent|
|completed_views|Float|Yes|Number of Completed Views|
|video_complete_rate|Float|Yes|Rate of Video Completion vs Partial Views|
|view_thru_rate|Float|Yes|View-Through Rate|
|cost_per_view|Float|No|Cost per View|

