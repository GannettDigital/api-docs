## Facebook Campaign Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/facebook_campaign/[gmaid]?[query_params] |
### API Name: Facebook Campaign Report
### Usage
Use GET to retrieve information for the Facebook Campaign Report for a given advertiser.

The data returned will include various metrics organized by campaign and campaign\_cycle.  If no values are present for a given metric, 0 is assumed, except for `offline_conversion_purchases`, `offline_conversion_purchases_value`, `cpsc` and `roas`, which will be omitted from the result if not present.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those occurring on or after this date.|
|`end_date`|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|

To specify a date range:
   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/USA_105569?&campaign_status[]=running,stopped&start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-12-01&end_date=2016-12-31&include_cycles=true
```

> Example Response:

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?start_date=2020-06-26&end_date=2020-06-27
```

```javascript

{
    "report_type": "facebook_campaign",
    "report_date": "2020-08-31",
    "earliest_date_available": "2018-06-01",      // How far back data is available
    "start_date": "2020-06-26",
    "end_date": "2020-06-27",
    "time_zone": "America/Los_Angeles",           // Time Zone
    "interval_size": "day",                       // Interval Size ('day', 'calendar_week' or 'calendar_month')
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Boosted Posts",
                "global_master_campaign_id": "TEST_2",
                "start_date": "2020-05-07",
                "end_date": null,
                "type": "other",
                "status": "running",
                "goals": [],
                "intervals": [
                    {
                        "start_date": "2020-06-26",       // Interval start date
                        "impressions": 880.0,             // Metrics for this interval
                        "call_to_action_clicks": 0,
                        "clicks": 71.0,
                        "social_clicks": 0,
                        "reach": 865.0,
                        "social_reach": 0,
                        "social_impressions": 0,
                        "website_clicks": 0,
                        "inline_link_clicks": 0,
                        "link_click": 0,
                        "page_engagement": 59.0,
                        "like": 0,
                        "post_engagement": 59.0,
                        "comment": 1.0,
                        "post": 2.0,
                        "post_reaction": 53.0,
                        "checkin": 0,
                        "action_reaction": 0,
                        "leadgen.other": 0,
                        "frequency": 1.01734,
                        "spend": 8.47,
                        "video_p100_watched_actions": 0,
                        "video_avg_percent_watched_actions": 0,
                        "leads": 0,
                        "cpc": 0.12,
                        "cpm": 9.63,
                        "ctr": 8.07
                    },
                    {
                        "start_date": "2020-06-27",
                        "impressions": 897.0,
                        "call_to_action_clicks": 0,
                        "clicks": 56.0,
                        "social_clicks": 0,
                        "reach": 881.0,
                        "social_reach": 0,
                        "social_impressions": 0,
                        "website_clicks": 0,
                        "inline_link_clicks": 0,
                        "link_click": 0,
                        "page_engagement": 51.0,
                        "like": 0,
                        "post_engagement": 51.0,
                        "comment": 1.0,
                        "post": 1.0,
                        "post_reaction": 48.0,
                        "checkin": 0,
                        "action_reaction": 0,
                        "leadgen.other": 0,
                        "frequency": 1.01816,
                        "spend": 8.16,
                        "video_p100_watched_actions": 0,
                        "video_avg_percent_watched_actions": 0,
                        "leads": 0,
                        "cpc": 0.15,
                        "cpm": 9.1,
                        "ctr": 6.24
                    }
                ]
            },
            {
                "name": "Custom Social Ads",
                "global_master_campaign_id": "TEST_3",
                "start_date": "2020-05-15",
                "end_date": "2020-08-30",
                "type": "other",
                "status": "ended",
                "goals": [],
                "intervals": [
                    {
                        "start_date": "2020-06-26",
                        "impressions": 185698.0,
                        "call_to_action_clicks": 0,
                        "clicks": 2487.0,
                        "social_clicks": 0,
                        "reach": 141664.0,
                        "social_reach": 0,
                        "social_impressions": 0,
                        "website_clicks": 0,
                        "inline_link_clicks": 1601.0,
                        "link_click": 1601.0,
                        "page_engagement": 3266.0,
                        "like": 0,
                        "post_engagement": 3266.0,
                        "comment": 6.0,
                        "post": 1.0,
                        "post_reaction": 73.0,
                        "checkin": 0,
                        "action_reaction": 0,
                        "leadgen.other": 0,
                        "frequency": 1.31083,
                        "spend": 3330.7,
                        "video_p100_watched_actions": 187.0,
                        "video_avg_percent_watched_actions": 0,
                        "offline_conversion_purchases": 6.0,
                        "offline_conversion_purchases_value": 5893.0,
                        "leads": 1,
                        "cpc": 1.34,
                        "cpm": 17.94,
                        "ctr": 1.34,
                        "cpsc": 555.12,
                        "roas": 176.93
                    },
                    {
                        "start_date": "2020-06-27",
                        "impressions": 200808.0,
                        "call_to_action_clicks": 0,
                        "clicks": 2432.0,
                        "social_clicks": 0,
                        "reach": 158848.0,
                        "social_reach": 0,
                        "social_impressions": 0,
                        "website_clicks": 0,
                        "inline_link_clicks": 1573.0,
                        "link_click": 1573.0,
                        "page_engagement": 3127.0,
                        "like": 0,
                        "post_engagement": 3127.0,
                        "comment": 4.0,
                        "post": 4.0,
                        "post_reaction": 72.0,
                        "checkin": 0,
                        "action_reaction": 0,
                        "leadgen.other": 0,
                        "frequency": 1.26415,
                        "spend": 3436.88,
                        "video_p100_watched_actions": 161.0,
                        "video_avg_percent_watched_actions": 0,
                        "offline_conversion_purchases": 8.0,
                        "offline_conversion_purchases_value": 11671.5,
                        "leads": 0,
                        "cpc": 1.41,
                        "cpm": 17.12,
                        "ctr": 1.21,
                        "cpsc": 429.61,
                        "roas": 339.6
                    }
                ]
            }
        ],
        "totals": {                                   // Totals across all intervals, all campaigns
            "reach_breakdown": {                      // Segment breakdowns for reach
                "age_18-24_gender_male": 66.0,
                "age_18-24_gender_female": 1507.0,
                "age_25-34_gender_male": 64198.0,
                "age_25-34_gender_female": 65429.0,
                "age_35-44_gender_male": 51143.0,
                "age_35-44_gender_female": 54869.0,
                "age_45-54_gender_male": 36641.0,
                "age_45-54_gender_female": 43443.0,
                "age_55-64_gender_male": 34228.0,
                "age_55-64_gender_female": 58348.0,
                "age_65+_gender_male": 27969.0,
                "age_65+_gender_female": 65734.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 1.0,
                "age_25-34_gender_unknown": 480.0,
                "age_35-44_gender_unknown": 520.0,
                "age_45-54_gender_unknown": 240.0,
                "age_55-64_gender_unknown": 518.0,
                "age_65+_gender_unknown": 498.0,
                "age_13-17_gender_unknown": 0,
                "device_other": 5114.0,
                "device_desktop": 13709.0,
                "device_iphone": 203290.0,
                "device_ipad": 17931.0,
                "device_ipod": 30.0,
                "device_android_smartphone": 260703.0,
                "device_android_tablet": 8893.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "impressions_breakdown": {            // Segment breakdowns for impressions
                "age_18-24_gender_male": 70.0,
                "age_18-24_gender_female": 1613.0,
                "age_25-34_gender_male": 80391.0,
                "age_25-34_gender_female": 80861.0,
                "age_35-44_gender_male": 57873.0,
                "age_35-44_gender_female": 63619.0,
                "age_45-54_gender_male": 41947.0,
                "age_45-54_gender_female": 49402.0,
                "age_55-64_gender_male": 39943.0,
                "age_55-64_gender_female": 67781.0,
                "age_65+_gender_male": 33680.0,
                "age_65+_gender_female": 80010.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 2.0,
                "age_25-34_gender_unknown": 797.0,
                "age_35-44_gender_unknown": 695.0,
                "age_45-54_gender_unknown": 470.0,
                "age_55-64_gender_unknown": 555.0,
                "age_65+_gender_unknown": 502.0,
                "age_13-17_gender_unknown": 0,
                "device_other": 5702.0,
                "device_desktop": 15181.0,
                "device_iphone": 232500.0,
                "device_ipad": 19780.0,
                "device_ipod": 58.0,
                "device_android_smartphone": 316150.0,
                "device_android_tablet": 10840.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "clicks_breakdown": {              // Segment breakdowns for clicks
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 91.0,
                "age_25-34_gender_male": 327.0,
                "age_25-34_gender_female": 443.0,
                "age_35-44_gender_male": 215.0,
                "age_35-44_gender_female": 474.0,
                "age_45-54_gender_male": 213.0,
                "age_45-54_gender_female": 434.0,
                "age_55-64_gender_male": 364.0,
                "age_55-64_gender_female": 949.0,
                "age_65+_gender_male": 580.0,
                "age_65+_gender_female": 1693.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 3.0,
                "age_35-44_gender_unknown": 4.0,
                "age_45-54_gender_unknown": 4.0,
                "age_55-64_gender_unknown": 5.0,
                "age_65+_gender_unknown": 4.0,
                "age_13-17_gender_unknown": 0,
                "device_other": 81.0,
                "device_desktop": 135.0,
                "device_iphone": 2071.0,
                "device_ipad": 299.0,
                "device_ipod": 0,
                "device_android_smartphone": 3049.0,
                "device_android_tablet": 168.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "leads": 7,                        // metric totals across all intervals, all campaigns
            "impressions": 600211.0,
            "call_to_action_clicks": 0,
            "clicks": 5803.0,
            "social_clicks": 0,
            "reach": 507662.0,
            "social_reach": 0,
            "social_impressions": 0,
            "website_clicks": 0,
            "inline_link_clicks": 3654.0,
            "link_click": 3654.0,
            "page_engagement": 7009.0,
            "like": 5.0,
            "post_engagement": 7004.0,
            "comment": 13.0,
            "post": 12.0,
            "post_reaction": 261.0,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 0,
            "frequency": 15.59125,
            "spend": 8245.61,
            "video_p100_watched_actions": 348.0,
            "offline_conversion_purchases": 17.0,
            "offline_conversion_purchases_value": 20215.5,
            "cpc": 1.42,
            "cpm": 13.74,
            "ctr": 0.97,
            "cpsc": 485.04,
            "roas": 245.17,
            "average_daily_reach": 253831.0
        },
        "totals_per_interval": [                // metric totals by interval across all campaigns
            {
                "start_date": "2020-06-26",
                "impressions": 290012.0,
                "call_to_action_clicks": 0,
                "clicks": 2941.0,
                "social_clicks": 0,
                "reach": 242283.0,
                "social_reach": 0,
                "social_impressions": 0,
                "website_clicks": 0,
                "inline_link_clicks": 1846.0,
                "link_click": 1846.0,
                "page_engagement": 3585.0,
                "like": 3.0,
                "post_engagement": 3582.0,
                "comment": 7.0,
                "post": 4.0,
                "post_reaction": 137.0,
                "checkin": 0,
                "action_reaction": 0,
                "leadgen.other": 0,
                "frequency": 7.80571,
                "spend": 4068.06,
                "video_p100_watched_actions": 187.0,
                "leads": 5,
                "offline_conversion_purchases": 7.0,
                "offline_conversion_purchases_value": 6451.0,
                "cpc": 1.38,
                "cpm": 14.03,
                "ctr": 1.01,
                "cpsc": 581.15,
                "roas": 158.58
            },
            {
                "start_date": "2020-06-27",
                "impressions": 310199.0,
                "call_to_action_clicks": 0,
                "clicks": 2862.0,
                "social_clicks": 0,
                "reach": 265379.0,
                "social_reach": 0,
                "social_impressions": 0,
                "website_clicks": 0,
                "inline_link_clicks": 1808.0,
                "link_click": 1808.0,
                "page_engagement": 3424.0,
                "like": 2.0,
                "post_engagement": 3422.0,
                "comment": 6.0,
                "post": 8.0,
                "post_reaction": 124.0,
                "checkin": 0,
                "action_reaction": 0,
                "leadgen.other": 0,
                "frequency": 7.78554,
                "spend": 4177.55,
                "video_p100_watched_actions": 161.0,
                "leads": 2,
                "offline_conversion_purchases": 10.0,
                "offline_conversion_purchases_value": 13764.5,
                "cpc": 1.46,
                "cpm": 13.47,
                "ctr": 0.92,
                "cpsc": 417.76,
                "roas": 329.49
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?end_date=2020-06-27&start_date=2020-06-26"
}

```
