### **Display Campaign Metrics**
<a name="unified_display"></a>

### Resource Overview&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/unified_display/[gmaid]?[query_params]|


This is a Display Metrics API that can be used by customers that have Display campaigns from either the ReachLocal or Gannett brand. Data is returned for a GMAID for a specific date range determined by start_date and end_date. Data can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below. All metrics are reported at the creative level, and aggregated at the Interval/Campaign level for ReachLocal brand or Line Item level for the Gannett brand. When data is unavailable, corresponding property will not be present in the response. For example, if we do not have data for a creative_type or creative_size, it will not be present in the response.

**Note:** Please note in some cases, the response might not have all of the creatives used in the campaign. This scenario is apparent when the total metrics for the campaign does not match the sum of the same metrics across every creative within the campaigns.

We recommend you use the campaign totals from the response when reporting at the campaign level since it will include the creatives that may be missing in the response.

**Note:** We recommend that users migrate to this API instead of using the Display Activity API and Display Creative API, as they will no longer be updated.

**Note:** MOAT metrics are not supported after December 31, 2019. Any requests for date ranges after this will not include MOAT metrics. Date ranges that span beyond December 31, 2019 will show calculations based on start_date through December 31, 2019.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|interval_size|No|Specifies the type of interval: none, day, calendar_week, or calendar_month <br>**Default value: none**|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_cycle|Restrict results to a single campaign cycle|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|include_full_channel|Optional, default: false. Includes all metrics for the display channel. Xmedia campaigns will only contain metrics that belong to the display channel, rather than full campaign metrics.|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

### Response Data Details&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/unified_display/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data with intervals

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/unified_display/TEST_1?start_date=2016-12-01&end_date=2016-12-31&interval_size=day
```

> Example Response

```json
{
    "api_name": "unified_display",
    "api_run_date": "2020-12-18",
    "earliest_date_available": "2020-11-01",
    "start_date": "2020-12-12",
    "end_date": "2020-12-13",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "totals": {
            "clicks": 152.0,
            "impressions": 13560.0,
            "ctr": 1.12,
            "video_full_screen": 43.0,
            "video_mute": 20.0,
            "video_unmute": 33.0,
            "video_pause": 20.0,
            "video_resume": 33.0,
            "video_views": 71.0,
            "total_conversions": 90.0,
            "click_through_conversions": 64.0,
            "view_through_conversions": 107.0,
            "video_played_to_25_pct": 23.0,
            "video_played_to_50_pct": 33.0,
            "video_played_to_75_pct": 43.0,
            "completed_views": 53.0,
            "video_complete_rate": 74.65,
            "view_thru_rate": 0.39
        },
        "intervals": [
            {
                "start_date": "2020-12-12",
                "clicks": 75.0,
                "impressions": 6882.0,
                "ctr": 1.09,
                "video_full_screen": 20.0,
                "video_mute": 10.0,
                "video_unmute": 15.0,
                "video_pause": 10.0,
                "video_resume": 15.0,
                "video_views": 34.0,
                "total_conversions": 40.0,
                "click_through_conversions": 37.0,
                "view_through_conversions": 38.0,
                "video_played_to_25_pct": 10.0,
                "video_played_to_50_pct": 15.0,
                "video_played_to_75_pct": 20.0,
                "completed_views": 25.0,
                "video_complete_rate": 73.53,
                "view_thru_rate": 0.36
            },
            {
                "start_date": "2020-12-13",
                "clicks": 77.0,
                "impressions": 6678.0,
                "ctr": 1.15,
                "video_full_screen": 23.0,
                "video_mute": 10.0,
                "video_unmute": 18.0,
                "video_pause": 10.0,
                "video_resume": 18.0,
                "video_views": 37.0,
                "total_conversions": 50.0,
                "click_through_conversions": 27.0,
                "view_through_conversions": 69.0,
                "video_played_to_25_pct": 13.0,
                "video_played_to_50_pct": 18.0,
                "video_played_to_75_pct": 23.0,
                "completed_views": 28.0,
                "video_complete_rate": 75.68,
                "view_thru_rate": 0.42
            }
        ],
        "campaigns": [
            {
                "name": "Display Campaign (Demo)",
                "global_master_campaign_id": "TEST_1932587",
                "organization": "reachlocal",
                "start_date": "2020-11-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "spend": 50.0,
                "impressions": 2649.0,
                "clicks": 31.0,
                "form_submissions_ct": 15.0,
                "form_submissions_vt": 28.0,
                "priority_page_views_ct": 19.0,
                "priority_page_views_vt": 14.0,
                "website_visits_vt": 13.0,
                "walk_ins": 0.0,
                "ctr": 1.17,
                "cpm": 18.88,
                "cpc": 1.61,
                "cost_per_submission": 1.16,
                "div": 44.0,
                "cpdiv": 1.14,
                "video_full_screen": 11.0,
                "video_mute": 4.0,
                "video_unmute": 9.0,
                "video_pause": 4.0,
                "video_resume": 9.0,
                "video_views": 11.0,
                "total_conversions": 18.0,
                "click_through_conversions": 44.0,
                "view_through_conversions": 55.0,
                "video_played_to_25_pct": 7.0,
                "video_played_to_50_pct": 9.0,
                "video_played_to_75_pct": 11.0,
                "completed_views": 13.0,
                "video_complete_rate": 118.18,
                "view_thru_rate": 0.49,
                "cost_per_view": 3.85,
                "intervals": [
                    {
                        "start_date": "2020-12-12",
                        "spend": 25.0,
                        "impressions": 1292.0,
                        "clicks": 11.0,
                        "form_submissions_ct": 6.0,
                        "form_submissions_vt": 12.0,
                        "priority_page_views_ct": 10.0,
                        "priority_page_views_vt": 5.0,
                        "website_visits_vt": 5.0,
                        "walk_ins": 0.0,
                        "ctr": 0.85,
                        "cpm": 19.35,
                        "cpc": 2.27,
                        "cost_per_submission": 1.39,
                        "div": 16.0,
                        "cpdiv": 1.56,
                        "video_full_screen": 4.0,
                        "video_mute": 2.0,
                        "video_unmute": 3.0,
                        "video_pause": 2.0,
                        "video_resume": 3.0,
                        "video_views": 6.0,
                        "total_conversions": 8.0,
                        "click_through_conversions": 21.0,
                        "view_through_conversions": 22.0,
                        "video_played_to_25_pct": 2.0,
                        "video_played_to_50_pct": 3.0,
                        "video_played_to_75_pct": 4.0,
                        "completed_views": 5.0,
                        "video_complete_rate": 83.33,
                        "view_thru_rate": 0.39,
                        "cost_per_view": 5.0
                    },
                    {
                        "start_date": "2020-12-13",
                        "spend": 25.0,
                        "impressions": 1357.0,
                        "clicks": 20.0,
                        "form_submissions_ct": 9.0,
                        "form_submissions_vt": 16.0,
                        "priority_page_views_ct": 9.0,
                        "priority_page_views_vt": 9.0,
                        "website_visits_vt": 8.0,
                        "walk_ins": 0.0,
                        "ctr": 1.47,
                        "cpm": 18.42,
                        "cpc": 1.25,
                        "cost_per_submission": 1.0,
                        "div": 28.0,
                        "cpdiv": 0.89,
                        "video_full_screen": 7.0,
                        "video_mute": 2.0,
                        "video_unmute": 6.0,
                        "video_pause": 2.0,
                        "video_resume": 6.0,
                        "video_views": 5.0,
                        "total_conversions": 10.0,
                        "click_through_conversions": 23.0,
                        "view_through_conversions": 33.0,
                        "video_played_to_25_pct": 5.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 7.0,
                        "completed_views": 8.0,
                        "video_complete_rate": 160.0,
                        "view_thru_rate": 0.59,
                        "cost_per_view": 3.13
                    }
                ],
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 49,
                        "publisher_name": "Simpli.fi API",
                        "creative_name": "Creative (Demo) 1",
                        "creative_type": "Image",
                        "creative_size": "300x250",
                        "creative_template_id": 1234,
                        "native_style_id": 5678 ,
                        "preview_url": "https://example.com/imgUpload128240714.png",
                        "spend": 29.82,
                        "impressions": 1442.0,
                        "clicks": 13.0,
                        "form_submissions_ct": 3.0,
                        "form_submissions_vt": 22.0,
                        "priority_page_views_ct": 6.0,
                        "priority_page_views_vt": 11.0,
                        "website_visits_vt": 4.0,
                        "walk_ins": 0.0,
                        "ctr": 0.9,
                        "cpm": 20.68,
                        "cpc": 2.29,
                        "cost_per_submission": 1.19,
                        "div": 17.0,
                        "cpdiv": 1.75,
                        "video_full_screen": 7.0,
                        "video_mute": 3.0,
                        "video_unmute": 4.0,
                        "video_pause": 3.0,
                        "video_resume": 3.0,
                        "video_views": 5.0,
                        "total_conversions": 6.0,
                        "click_through_conversions": 14.0,
                        "view_through_conversions": 37.0,
                        "video_played_to_25_pct": 5.0,
                        "video_played_to_50_pct": 4.0,
                        "video_played_to_75_pct": 6.0,
                        "completed_views": 7.0,
                        "video_complete_rate": 140.0,
                        "view_thru_rate": 0.49,
                        "cost_per_view": 4.26,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "spend": 5.46,
                                "impressions": 312.0,
                                "clicks": 11.0,
                                "form_submissions_ct": 1.0,
                                "form_submissions_vt": 9.0,
                                "priority_page_views_ct": 3.0,
                                "priority_page_views_vt": 4.0,
                                "website_visits_vt": 1.0,
                                "walk_ins": 0.0,
                                "ctr": 3.53,
                                "cpm": 17.5,
                                "cpc": 0.5,
                                "cost_per_submission": 0.55,
                                "div": 12.0,
                                "cpdiv": 0.46,
                                "video_full_screen": 2.0,
                                "video_mute": 1.0,
                                "video_unmute": 3.0,
                                "video_pause": 1.0,
                                "video_resume": 1.0,
                                "video_views": 2.0,
                                "total_conversions": 2.0,
                                "click_through_conversions": 7.0,
                                "view_through_conversions": 14.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 2.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 1.0,
                                "video_complete_rate": 50.0,
                                "view_thru_rate": 0.32,
                                "cost_per_view": 5.46
                            },
                            {
                                "start_date": "2020-12-13",
                                "spend": 24.37,
                                "impressions": 1130.0,
                                "clicks": 2.0,
                                "form_submissions_ct": 2.0,
                                "form_submissions_vt": 13.0,
                                "priority_page_views_ct": 3.0,
                                "priority_page_views_vt": 7.0,
                                "website_visits_vt": 3.0,
                                "walk_ins": 0.0,
                                "ctr": 0.18,
                                "cpm": 21.57,
                                "cpc": 12.19,
                                "cost_per_submission": 1.62,
                                "div": 5.0,
                                "cpdiv": 4.87,
                                "video_full_screen": 5.0,
                                "video_mute": 2.0,
                                "video_unmute": 1.0,
                                "video_pause": 2.0,
                                "video_resume": 2.0,
                                "video_views": 3.0,
                                "total_conversions": 4.0,
                                "click_through_conversions": 7.0,
                                "view_through_conversions": 23.0,
                                "video_played_to_25_pct": 3.0,
                                "video_played_to_50_pct": 2.0,
                                "video_played_to_75_pct": 2.0,
                                "completed_views": 6.0,
                                "video_complete_rate": 200.0,
                                "view_thru_rate": 0.53,
                                "cost_per_view": 4.06
                            }
                        ]
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 49,
                        "publisher_name": "Simpli.fi API",
                        "creative_name": "Creative (Demo) 2",
                        "creative_type": "Image",
                        "creative_template_id": 1234,
                        "native_style_id": 5678 ,
                        "creative_size": "300x250",
                        "spend": 20.18,
                        "impressions": 1207.0,
                        "clicks": 18.0,
                        "form_submissions_ct": 12.0,
                        "form_submissions_vt": 6.0,
                        "priority_page_views_ct": 13.0,
                        "priority_page_views_vt": 3.0,
                        "website_visits_vt": 9.0,
                        "walk_ins": 0.0,
                        "ctr": 1.49,
                        "cpm": 16.72,
                        "cpc": 1.12,
                        "cost_per_submission": 1.12,
                        "div": 27.0,
                        "cpdiv": 0.75,
                        "video_full_screen": 4.0,
                        "video_mute": 1.0,
                        "video_unmute": 5.0,
                        "video_pause": 1.0,
                        "video_resume": 6.0,
                        "video_views": 6.0,
                        "total_conversions": 12.0,
                        "click_through_conversions": 30.0,
                        "view_through_conversions": 18.0,
                        "video_played_to_25_pct": 2.0,
                        "video_played_to_50_pct": 5.0,
                        "video_played_to_75_pct": 5.0,
                        "completed_views": 6.0,
                        "video_complete_rate": 100.0,
                        "view_thru_rate": 0.5,
                        "cost_per_view": 3.36,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "spend": 19.54,
                                "impressions": 980.0,
                                "clicks": 0.0,
                                "form_submissions_ct": 5.0,
                                "form_submissions_vt": 3.0,
                                "priority_page_views_ct": 7.0,
                                "priority_page_views_vt": 1.0,
                                "website_visits_vt": 4.0,
                                "walk_ins": 0.0,
                                "ctr": 0.0,
                                "cpm": 19.94,
                                "cpc": 0,
                                "cost_per_submission": 2.44,
                                "div": 4.0,
                                "cpdiv": 4.89,
                                "video_full_screen": 2.0,
                                "video_mute": 1.0,
                                "video_unmute": 0.0,
                                "video_pause": 1.0,
                                "video_resume": 2.0,
                                "video_views": 4.0,
                                "total_conversions": 6.0,
                                "click_through_conversions": 14.0,
                                "view_through_conversions": 8.0,
                                "video_played_to_25_pct": 0.0,
                                "video_played_to_50_pct": 1.0,
                                "video_played_to_75_pct": 0.0,
                                "completed_views": 4.0,
                                "video_complete_rate": 100.0,
                                "view_thru_rate": 0.41,
                                "cost_per_view": 4.89
                            },
                            {
                                "start_date": "2020-12-13",
                                "spend": 0.63,
                                "impressions": 227.0,
                                "clicks": 18.0,
                                "form_submissions_ct": 7.0,
                                "form_submissions_vt": 3.0,
                                "priority_page_views_ct": 6.0,
                                "priority_page_views_vt": 2.0,
                                "website_visits_vt": 5.0,
                                "walk_ins": 0.0,
                                "ctr": 7.93,
                                "cpm": 2.78,
                                "cpc": 0.04,
                                "cost_per_submission": 0.06,
                                "div": 23.0,
                                "cpdiv": 0.03,
                                "video_full_screen": 2.0,
                                "video_mute": 0.0,
                                "video_unmute": 5.0,
                                "video_pause": 0.0,
                                "video_resume": 4.0,
                                "video_views": 2.0,
                                "total_conversions": 6.0,
                                "click_through_conversions": 16.0,
                                "view_through_conversions": 10.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 4.0,
                                "video_played_to_75_pct": 5.0,
                                "completed_views": 2.0,
                                "video_complete_rate": 100.0,
                                "view_thru_rate": 0.88,
                                "cost_per_view": 0.32
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Facebook Campaign (Demo)",
                "global_master_campaign_id": "TEST_1932611",
                "organization": "reachlocal",
                "start_date": "2020-11-01",
                "end_date": null,
                "type": "facebook",
                "status": "running",
                "spend": 50.0,
                "impressions": 2722.0,
                "clicks": 23.0,
                "form_submissions_ct": 0.0,
                "form_submissions_vt": 0.0,
                "priority_page_views_ct": 0.0,
                "priority_page_views_vt": 0.0,
                "website_visits_vt": 0.0,
                "walk_ins": 0.0,
                "ctr": 0.84,
                "cpm": 18.37,
                "cpc": 2.17,
                "cost_per_submission": 0,
                "div": 0.0,
                "cpdiv": 0,
                "video_full_screen": 0.0,
                "video_mute": 0.0,
                "video_unmute": 0.0,
                "video_pause": 0.0,
                "video_resume": 0.0,
                "video_views": 0.0,
                "total_conversions": 0.0,
                "click_through_conversions": 0.0,
                "view_through_conversions": 0.0,
                "video_played_to_25_pct": 0.0,
                "video_played_to_50_pct": 0.0,
                "video_played_to_75_pct": 0.0,
                "completed_views": 0.0,
                "video_complete_rate": 0.0,
                "view_thru_rate": 0.0,
                "cost_per_view": 0,
                "intervals": [],
                "creatives": []
            },
            {
                "name": "Geofence Campaign (Demo)",
                "global_master_campaign_id": "TEST_1932625",
                "organization": "reachlocal",
                "start_date": "2020-11-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "spend": 50.0,
                "impressions": 2784.0,
                "clicks": 27.0,
                "form_submissions_ct": 0.0,
                "form_submissions_vt": 0.0,
                "priority_page_views_ct": 0.0,
                "priority_page_views_vt": 0.0,
                "website_visits_vt": 0.0,
                "walk_ins": 0.0,
                "ctr": 0.97,
                "cpm": 17.96,
                "cpc": 1.85,
                "cost_per_submission": 0,
                "div": 0.0,
                "cpdiv": 0,
                "video_full_screen": 0.0,
                "video_mute": 0.0,
                "video_unmute": 0.0,
                "video_pause": 0.0,
                "video_resume": 0.0,
                "video_views": 0.0,
                "total_conversions": 0.0,
                "click_through_conversions": 0.0,
                "view_through_conversions": 0.0,
                "video_played_to_25_pct": 0.0,
                "video_played_to_50_pct": 0.0,
                "video_played_to_75_pct": 0.0,
                "completed_views": 0.0,
                "video_complete_rate": 0.0,
                "view_thru_rate": 0.0,
                "cost_per_view": 0,
                "intervals": [],
                "creatives": []
            },
            {
                "name": "Youtube Campaign (Demo)",
                "global_master_campaign_id": "TEST_1932638",
                "organization": "reachlocal",
                "start_date": "2020-11-01",
                "end_date": null,
                "type": "youtube",
                "status": "running",
                "spend": 50.0,
                "impressions": 2928.0,
                "clicks": 37.0,
                "form_submissions_ct": 0.0,
                "form_submissions_vt": 0.0,
                "priority_page_views_ct": 0.0,
                "priority_page_views_vt": 0.0,
                "website_visits_vt": 0.0,
                "walk_ins": 0.0,
                "ctr": 1.26,
                "cpm": 17.08,
                "cpc": 1.35,
                "cost_per_submission": 0,
                "div": 0.0,
                "cpdiv": 0,
                "video_full_screen": 0.0,
                "video_mute": 0.0,
                "video_unmute": 0.0,
                "video_pause": 0.0,
                "video_resume": 0.0,
                "video_views": 0.0,
                "total_conversions": 0.0,
                "click_through_conversions": 0.0,
                "view_through_conversions": 0.0,
                "video_played_to_25_pct": 0.0,
                "video_played_to_50_pct": 0.0,
                "video_played_to_75_pct": 0.0,
                "completed_views": 0.0,
                "video_complete_rate": 0.0,
                "view_thru_rate": 0.0,
                "cost_per_view": 0,
                "intervals": [],
                "creatives": []
            }
        ],
        "line_items": [
            {
                "name": "Line Item (Demo) 1",
                "line_item_id": 1,
                "organization": "gannett",
                "impressions": 830.0,
                "clicks": 14.0,
                "total_active_time_view": 335.83,
                "ctr": 1.69,
                "video_full_screen": 16.0,
                "video_mute": 8.0,
                "video_unmute": 12.0,
                "video_pause": 8.0,
                "video_resume": 12.0,
                "video_views": 26.0,
                "total_conversions": 36.0,
                "click_through_conversions": 10.0,
                "view_through_conversions": 26.0,
                "video_played_to_25_pct": 8.0,
                "video_played_to_50_pct": 12.0,
                "video_played_to_75_pct": 16.0,
                "completed_views": 20.0,
                "video_complete_rate": 76.92,
                "view_thru_rate": 2.41,
                "intervals": [
                    {
                        "start_date": "2020-12-12",
                        "impressions": 444.0,
                        "clicks": 10.0,
                        "total_active_time_view": 59.2,
                        "ctr": 2.25,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 13.0,
                        "total_conversions": 16.0,
                        "click_through_conversions": 8.0,
                        "view_through_conversions": 8.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 76.92,
                        "view_thru_rate": 2.25
                    },
                    {
                        "start_date": "2020-12-13",
                        "impressions": 386.0,
                        "clicks": 4.0,
                        "total_active_time_view": 276.63,
                        "ctr": 1.04,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 13.0,
                        "total_conversions": 20.0,
                        "click_through_conversions": 2.0,
                        "view_through_conversions": 18.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 76.92,
                        "view_thru_rate": 2.59
                    }
                ],
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 1",
                        "impressions": 564.0,
                        "clicks": 8.0,
                        "total_active_time_view": 221.03,
                        "ctr": 1.42,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 14.0,
                        "total_conversions": 18.0,
                        "click_through_conversions": 5.0,
                        "view_through_conversions": 13.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 71.43,
                        "view_thru_rate": 1.77,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "impressions": 314.0,
                                "clicks": 6.0,
                                "total_active_time_view": 41.87,
                                "ctr": 1.91,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 8.0,
                                "total_conversions": 8.0,
                                "click_through_conversions": 4.0,
                                "view_through_conversions": 4.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 62.5,
                                "view_thru_rate": 1.59
                            },
                            {
                                "start_date": "2020-12-13",
                                "impressions": 250.0,
                                "clicks": 2.0,
                                "total_active_time_view": 179.17,
                                "ctr": 0.8,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 6.0,
                                "total_conversions": 10.0,
                                "click_through_conversions": 1.0,
                                "view_through_conversions": 9.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 83.33,
                                "view_thru_rate": 2.0
                            }
                        ]
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 2",
                        "impressions": 266.0,
                        "clicks": 6.0,
                        "total_active_time_view": 114.8,
                        "ctr": 2.26,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 12.0,
                        "total_conversions": 18.0,
                        "click_through_conversions": 5.0,
                        "view_through_conversions": 13.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 83.33,
                        "view_thru_rate": 3.76,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "impressions": 130.0,
                                "clicks": 4.0,
                                "total_active_time_view": 17.33,
                                "ctr": 3.08,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 5.0,
                                "total_conversions": 8.0,
                                "click_through_conversions": 4.0,
                                "view_through_conversions": 4.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 100.0,
                                "view_thru_rate": 3.85
                            },
                            {
                                "start_date": "2020-12-13",
                                "impressions": 136.0,
                                "clicks": 2.0,
                                "total_active_time_view": 97.47,
                                "ctr": 1.47,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 7.0,
                                "total_conversions": 10.0,
                                "click_through_conversions": 1.0,
                                "view_through_conversions": 9.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 71.43,
                                "view_thru_rate": 3.68
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Line Item (Demo) 2",
                "line_item_id": 2,
                "organization": "gannett",
                "impressions": 1647.0,
                "clicks": 20.0,
                "total_active_time_view": 653.02,
                "ctr": 1.21,
                "video_full_screen": 16.0,
                "video_mute": 8.0,
                "video_unmute": 12.0,
                "video_pause": 8.0,
                "video_resume": 12.0,
                "video_views": 34.0,
                "total_conversions": 36.0,
                "click_through_conversions": 10.0,
                "view_through_conversions": 26.0,
                "video_played_to_25_pct": 8.0,
                "video_played_to_50_pct": 12.0,
                "video_played_to_75_pct": 16.0,
                "completed_views": 20.0,
                "video_complete_rate": 58.82,
                "view_thru_rate": 1.21,
                "intervals": [
                    {
                        "start_date": "2020-12-12",
                        "impressions": 904.0,
                        "clicks": 10.0,
                        "total_active_time_view": 120.53,
                        "ctr": 1.11,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 15.0,
                        "total_conversions": 16.0,
                        "click_through_conversions": 8.0,
                        "view_through_conversions": 8.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 66.67,
                        "view_thru_rate": 1.11
                    },
                    {
                        "start_date": "2020-12-13",
                        "impressions": 743.0,
                        "clicks": 10.0,
                        "total_active_time_view": 532.48,
                        "ctr": 1.35,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 19.0,
                        "total_conversions": 20.0,
                        "click_through_conversions": 2.0,
                        "view_through_conversions": 18.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 52.63,
                        "view_thru_rate": 1.35
                    }
                ],
                "creatives": [
                    {
                        "creative_id": 1,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 1",
                        "impressions": 425.0,
                        "clicks": 7.0,
                        "total_active_time_view": 231.67,
                        "ctr": 1.65,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 14.0,
                        "total_conversions": 18.0,
                        "click_through_conversions": 5.0,
                        "view_through_conversions": 13.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 71.43,
                        "view_thru_rate": 2.35,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "impressions": 125.0,
                                "clicks": 5.0,
                                "total_active_time_view": 16.67,
                                "ctr": 4.0,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 5.0,
                                "total_conversions": 8.0,
                                "click_through_conversions": 4.0,
                                "view_through_conversions": 4.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 100.0,
                                "view_thru_rate": 4.0
                            },
                            {
                                "start_date": "2020-12-13",
                                "impressions": 300.0,
                                "clicks": 2.0,
                                "total_active_time_view": 215.0,
                                "ctr": 0.67,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 9.0,
                                "total_conversions": 10.0,
                                "click_through_conversions": 1.0,
                                "view_through_conversions": 9.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 55.56,
                                "view_thru_rate": 1.67
                            }
                        ]
                    },
                    {
                        "creative_id": 2,
                        "publisher_id": 2117,
                        "publisher_name": "DoubleClick",
                        "name": "Creative (Demo) 2",
                        "impressions": 1222.0,
                        "clicks": 13.0,
                        "total_active_time_view": 421.35,
                        "ctr": 1.06,
                        "video_full_screen": 8.0,
                        "video_mute": 4.0,
                        "video_unmute": 6.0,
                        "video_pause": 4.0,
                        "video_resume": 6.0,
                        "video_views": 20.0,
                        "total_conversions": 18.0,
                        "click_through_conversions": 5.0,
                        "view_through_conversions": 13.0,
                        "video_played_to_25_pct": 4.0,
                        "video_played_to_50_pct": 6.0,
                        "video_played_to_75_pct": 8.0,
                        "completed_views": 10.0,
                        "video_complete_rate": 50.0,
                        "view_thru_rate": 0.82,
                        "intervals": [
                            {
                                "start_date": "2020-12-12",
                                "impressions": 779.0,
                                "clicks": 5.0,
                                "total_active_time_view": 103.87,
                                "ctr": 0.64,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 10.0,
                                "total_conversions": 8.0,
                                "click_through_conversions": 4.0,
                                "view_through_conversions": 4.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 50.0,
                                "view_thru_rate": 0.64
                            },
                            {
                                "start_date": "2020-12-13",
                                "impressions": 443.0,
                                "clicks": 8.0,
                                "total_active_time_view": 317.48,
                                "ctr": 1.81,
                                "video_full_screen": 4.0,
                                "video_mute": 2.0,
                                "video_unmute": 3.0,
                                "video_pause": 2.0,
                                "video_resume": 3.0,
                                "video_views": 10.0,
                                "total_conversions": 10.0,
                                "click_through_conversions": 1.0,
                                "view_through_conversions": 9.0,
                                "video_played_to_25_pct": 2.0,
                                "video_played_to_50_pct": 3.0,
                                "video_played_to_75_pct": 4.0,
                                "completed_views": 5.0,
                                "video_complete_rate": 50.0,
                                "view_thru_rate": 1.13
                            }
                        ]
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

|Field Name|Datatype|Description|
|---|---|---|
|clicks|Integer|Total clicks|
|impressions|Integer|Total impressions|
|ctr|Float|Overall Click-through Rate|
|video_full_screen|Float|Number of Full-Screen Video Views<br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views <br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views<br>**The field is nullable**|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Number of Completed Views<br>**The field is nullable**|
|video_complete_rate|Float|Rate of Video Completion vs Partial Views<br>**The field is nullable**|
|view_thru_rate|Float|View-Through Rate<br>**The field is nullable**|

<a name="udintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start Date of interval|
|clicks|Integer|Number of clicks for interval|
|impressions|Integer|Number of impressions for interval|
|ctr|Float|Click-through Rate for interval|
|video_full_screen|Float|Number of Full-Screen Video Views|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views<br>**The field is nullable**|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Number of Completed Views<br>**The field is nullable**|
|video_complete_rate|Float|Rate of Video Completion vs Partial Views<br>**The field is nullable**|
|view_thru_rate|Float|View-Through Rate<br>**The field is nullable**|

<a name="udcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign Name|
|global_master_campaign_id|String|Unique Identifier for Campaign|
|organization|String|Either reachlocal or gannett|
|start_date|String|Campaign Start Date|
|end_date|String|Campaign End Date<br>**The field is nullable**|
|type|String|Type of Campaign|
|status|String|Status of Campaign|
|spend|Float|Total Spend for Campaign|
|impressions|Float|Total Impressions for Campaign|
|clicks|Float|Total Clicks for Campaign|
|ctr|Float|Overall Click-through Rate of Campaign|
|cpm|Float|Overall Click Per Thousand Impressions for Campaign|
|cpc|Float|Cost Per Click for Campaign|
|walk_ins|Float|Total Walk-ins for Campaign|
|cost_per_view|Float|Total Cost Per View for Campaign|
|form_submissions_ct|Float|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|Total Form Submission View Through for Campaign|
|website_visits_vt|Float|Total Website Visits View Through for Campaign|
|cost_per_submission|Float|Total Cost Per Submission for Campaign|
|priority_page_views_ct|Float|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|Total Priority Page View Through for Campaign|
|video_full_screen|Float|Number of Full-Screen Video Views<br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Total Completed Views for Campaign|
|video_complete_rate|Float|Total Video Completion Rate|
|view_thru_rate|Float|Total View-Through Rate|
|cost_per_view|Float|Cost per View|
|div|Float|Display-Influenced Visits|
|cpdiv|Float|Cost per Display-Influenced Visit|
|creatives|Object|Object of creatives details. [Campaign Creatives Object](#udcampaigncreatives)|

<a name="udlineitems"></a>
**Line Items Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Name of Line Item|
|line_item_id|Int|Identifier of Line Item|
|organization|String|Either reachlocal or gannett|
|impressions|Int|Total Impressions for Line Item|
|clicks|Int|Total Clicks for Line Item|
|total_active_time_view|Float|Total Time (minutes) the ad was viewed by a consumers|
|ctr|Float|Overall Click-through Rate of Line Item|
|universal_interaction_rate|Float|Overall Universal Interaction Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|Overall Universal Interaction Time for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|Hover Rate for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|Attention Quality for Line Item (This MOAT metric was deprecated on 12-31-2019)|
|intervals|Object|Object of line items intervals. [Line Item Intervals Object](#udlineitemintervals)|
|creatives|Object|Object of line items creatives. [Line Item Creatives Object](#udlineitemcreatives)|

<a name="udlineitemintervals"></a>
**Line Items Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|==|Start Date of Interval|
|impressions|Integer|Total Impressions for Interval|
|clicks|Integer|Total Clicks for Interval|
|total_active_time_view|Float|Total Time (minutes) the ad was viewed by a consumers|
|ctr|Float|Overall Click-through Rate of Interval|
|universal_interaction_rate|Float|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Number of Full-Screen Video Views<br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views<br>**The field is nullable**|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Number of Completed Views<br>**The field is nullable**|
|video_complete_rate|Float|Rate of Video Completion vs Partial Views<br>**The field is nullable**|
|view_thru_rate|Float|View-Through Rate<br>**The field is nullable**|
|cost_per_view|Float|Cost per View|

<a name="udlineitemcreatives"></a>
**Line Items Creatives Object**

|Field Name|Datatype|Description|
|---|---|---|
|creative_id|String|Identifier for Creative|
|publisher_id|String|Identifier for Publisher|
|publisher_name|String|Name of Publisher|
|name|String|Name of Creative|
|creative_size|String|Size of Creative|
|preview_url|String|Preview URL for creative|
|impressions|Integer|Total Impressions for Creative|
|clicks|Integer|Total Clicks for Creative|
|total_active_time_view|Float|Total Time (minutes) the ad was viewed by a consumers|
|ctr|Float|Overall Click-through Rate of Creative|
|universal_interaction_rate|Float|Overall Universal Interaction Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|Overall Universal Interaction Time for Creative (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|Hover Rate for Creative (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|Attention Quality for Creative (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Number of Full-Screen Video Views<br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views<br>**The field is nullable**|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Number of Completed Views<br>**The field is nullable**|
|video_complete_rate|Float|Rate of Video Completion vs Partial Views<br>**The field is nullable**|
|view_thru_rate|Float|View-Through Rate<br>**The field is nullable**|
|cost_per_view|Float|Cost per View|
|intervals|Object|Object of line items creatives intervals. [Line Items Creatives Intervals Object](#udlineitemscreativesintervals)|

<a name="udcampaigncreatives"></a>
**Campaign Creatives Object**

|Field Name|Datatype|Description|
|---|---|---|
|creative_id|Integer|Identifier for Creative|
|publisher_id|Integer|Identifier for Publisher|
|publisher_name|String|Name of Publisher|
|creative_name|String|Name of Creative <br>**The field is nullable**|
|creative_type|String|Type of Creative|
|creative_template_id|Integer|The template id of the creative (Used for paramount creatives)|
|native_style_id|Integer|The native style id of the creative (Used for paramount creatives)|
|creative_size|String|Size of Creative|
|preview_url|String|Preview URL for creative|
|spend|Float|Total Spend for Campaign|
|impressions|Float|Total Impressions for Interval|
|clicks|Float|Total Clicks for Interval|
|total_active_time_view|Float|Total Time (minutes) the ad was viewed by a consumers|
|ctr|Float|Overall Click-through Rate of Interval|
|cpm|Float|Overall Click Per Thousand Impressions for Interval|
|cpc|Float|Cost Per Click for Interval|
|walk_ins|Float|Total Walk-ins for Interval|
|cost_per_view|Float|Total Cost Per View for Campaign|
|form_submissions_ct|Float|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|Total Form Submission View Through for Campaign|
|website_visits_vt|Float|Total Website Visits View Through for Campaign|
|cost_per_submission|Float|Total Cost Per Submission for Campaign|
|priority_page_views_ct|Float|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|Total Priority Page View Through for Campaign|
|video_full_screen|Float|Number of Full-Screen Video Views <br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Total Completed Views for Campaign|
|video_complete_rate|Float|Total Video Completion Rate|
|view_thru_rate|Float|Total View-Through Rate|
|cost_per_view|Float|Cost per View|
|div|Float|Display-Influenced Visits|
|cpdiv|Float|Cost per Display-Influenced Visit|

<a name="udlineitemscreativesintervals"></a>
**Line Items Creatives Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start Date of Interval|
|impressions|Integer|Total Impressions for Interval|
|clicks|Integer|Total Clicks for Interval|
|total_active_time_view|Float|Total Time (minutes) the ad was viewed by a consumers|
|ctr|Float|Overall Click-through Rate of Interval|
|universal_interaction_rate|Float|Overall Universal Interaction Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|universal_interaction_time|Float|Overall Universal Interaction Time for Interval (This MOAT metric was deprecated on 12-31-2019)|
|hover_rate|Float|Hover Rate for Interval (This MOAT metric was deprecated on 12-31-2019)|
|attention_quality|Float|Attention Quality for Interval (This MOAT metric was deprecated on 12-31-2019)|
|video_full_screen|Float|Number of Full-Screen Video Views<br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views<br>**The field is nullable**|
|total_conversions|Float|Number of Conversions<br>**The field is nullable**|
|click_through_conversions|Float|Number of Click-Through Conversions<br>**The field is nullable**|
|view_through_conversions|Float|Number of View-Through Conversions<br>**The field is nullable**|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Floates|Number of Completed Views<br>**The field is nullable**|
|video_complete_rate|Float|Rate of Video Completion vs Partial Views<br>**The field is nullable**|
|view_thru_rate|Float|View-Through Rate<br>**The field is nullable**|
|cost_per_view|Float|Cost per View|
