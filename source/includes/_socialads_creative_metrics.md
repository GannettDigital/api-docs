## SocialAds Creative Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/social_creative/[gmaid]?[query_params] |

This API can be used to retrieve metrics for Social campaigns broken down by campaign, cycle, web publisher campaign and creative.

Use GET to retrieve creative metrics for a Social campaign. Metrics can be returned for a GMAID for a specific date range determined by start_date and end_date. Metrics can be retrieved for a specified campaign or cycle..
Metrics can also be returned in specified intervals by using the interval_size param in conjunction with the focus param.  Use the focus param to specify at what level to recieve interval metrics.

The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|start_date| yes |--|Restricts the results to those ocurring on or after this date|
|end_date| yes |--|Restricts the results to those ocurring on or before this date|
global_master_campaign_id[]| no |--|Restrict results to one or more specific campaigns|
|campaign_status[]| no |running|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended|
|campaign_cycle| no |--|Restrict results to a single campaign cycle|
|interval_size| no | day | Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles| no | false |Set to true or false on whether to include cycle nesting.  Default value is false|
|markup_type| no |--|Only valid option is "percentage"|
|markup_value| no | 0 |When markup_type is "percentage" this is the percent markup|
|focus| no | All Levels |Specifies which level to return results for. Valid focuses are campaign, cycle, wpc, and creative.  Must provide include_cycles=true for cycle focus.|

### Response Data Details

> Example Response with include_cycles=true

```json
{
    "api_name": "social_creative",
    "api_run_date": "2020-10-26",
    "earliest_date_available": "2020-10-01",
    "start_date": "2020-10-15",
    "end_date": "2020-10-15",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "campaigns": [
            {
                "name": "Facebook Campaign (Demo)",
                "global_master_campaign_id": "TEST_1460473",
                "organization": "reachlocal",
                "start_date": "2020-10-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "goals": [
                    {
                        "goal_type_id": 5,
                        "goal_type": "Reach"
                    },
                    {
                        "goal_type_id": 4,
                        "goal_type": "Engagement"
                    }
                ],
                "impressions": 1392,
                "call_to_action_clicks": 5.0,
                "clicks": 18,
                "social_clicks": 9.0,
                "reach": 1392.0,
                "social_reach": 89.0,
                "social_impressions": 1392.0,
                "website_clicks": 7.0,
                "inline_link_clicks": 9.0,
                "link_click": 5.0,
                "page_engagement": 56.0,
                "like": 81.0,
                "post_engagement": 82.0,
                "comment": 8.0,
                "post": 8.0,
                "post_reaction": 71.0,
                "checkin": 7.0,
                "action_reaction": 5.0,
                "leadgen.other": 0,
                "frequency": 9.0,
                "spend": 25.0,
                "video_p100_watched_actions": 18.0,
                "offline_conversion_purchases": 5.0,
                "offline_conversion_purchases_value": 79.0,
                "cpc": 1.39,
                "cpm": 17.96,
                "ctr": 1.29,
                "cpsc": 5.0,
                "roas": 316.0,
                "wpcs": [
                    {
                        "id": 1460475,
                        "name": "Facebook National",
                        "channel": "social",
                        "geo_type": "National",
                        "start_date": "2020-10-01",
                        "end_date": null,
                        "tactic": "Facebook",
                        "external_account_id": "12345",
                        "external_account_name": "test",
                        "impressions": 1392,
                        "call_to_action_clicks": 5.0,
                        "clicks": 18,
                        "social_clicks": 9.0,
                        "reach": 1392.0,
                        "social_reach": 89.0,
                        "social_impressions": 1392.0,
                        "website_clicks": 7.0,
                        "inline_link_clicks": 9.0,
                        "link_click": 5.0,
                        "page_engagement": 56.0,
                        "like": 81.0,
                        "post_engagement": 82.0,
                        "comment": 8.0,
                        "post": 8.0,
                        "post_reaction": 71.0,
                        "checkin": 7.0,
                        "action_reaction": 5.0,
                        "leadgen.other": 0,
                        "frequency": 9.0,
                        "spend": 0.0,
                        "video_p100_watched_actions": 18.0,
                        "offline_conversion_purchases": 5.0,
                        "offline_conversion_purchases_value": 79.0,
                        "cpc": 0.0,
                        "cpm": 0.0,
                        "ctr": 1.29,
                        "cpsc": 0.0,
                        "roas": 0,
                        "intervals": [
                            {
                                "start_date": "2020-10-15",
                                "impressions": 1392,
                                "call_to_action_clicks": 5.0,
                                "clicks": 18,
                                "social_clicks": 9.0,
                                "reach": 1392.0,
                                "social_reach": 89.0,
                                "social_impressions": 1392.0,
                                "website_clicks": 7.0,
                                "inline_link_clicks": 9.0,
                                "link_click": 5.0,
                                "page_engagement": 56.0,
                                "like": 81.0,
                                "post_engagement": 82.0,
                                "comment": 8.0,
                                "post": 8.0,
                                "post_reaction": 71.0,
                                "checkin": 7.0,
                                "action_reaction": 5.0,
                                "leadgen.other": 0,
                                "frequency": 9.0,
                                "spend": 0.0,
                                "video_p100_watched_actions": 18.0,
                                "offline_conversion_purchases": 5.0,
                                "offline_conversion_purchases_value": 79.0,
                                "cpc": 0.0,
                                "cpm": 0.0,
                                "ctr": 1.29,
                                "cpsc": 0.0,
                                "roas": 0
                            }
                        ]
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1392,
            "call_to_action_clicks": 5.0,
            "clicks": 18,
            "social_clicks": 9.0,
            "reach": 1392.0,
            "social_reach": 89.0,
            "social_impressions": 1392.0,
            "website_clicks": 7.0,
            "inline_link_clicks": 9.0,
            "link_click": 5.0,
            "page_engagement": 56.0,
            "like": 81.0,
            "post_engagement": 82.0,
            "comment": 8.0,
            "post": 8.0,
            "post_reaction": 71.0,
            "checkin": 7.0,
            "action_reaction": 5.0,
            "leadgen.other": 0,
            "frequency": 9.0,
            "spend": 25.0,
            "video_p100_watched_actions": 18.0,
            "offline_conversion_purchases": 5.0,
            "offline_conversion_purchases_value": 79.0,
            "cpc": 1.39,
            "cpm": 17.96,
            "ctr": 1.29,
            "cpsc": 5.0,
            "roas": 316.0
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-15",
                "impressions": 1392,
                "call_to_action_clicks": 5.0,
                "clicks": 18,
                "social_clicks": 9.0,
                "reach": 1392.0,
                "social_reach": 89.0,
                "social_impressions": 1392.0,
                "website_clicks": 7.0,
                "inline_link_clicks": 9.0,
                "link_click": 5.0,
                "page_engagement": 56.0,
                "like": 81.0,
                "post_engagement": 82.0,
                "comment": 8.0,
                "post": 8.0,
                "post_reaction": 71.0,
                "checkin": 7.0,
                "action_reaction": 5.0,
                "leadgen.other": 0,
                "frequency": 9.0,
                "spend": 25.0,
                "video_p100_watched_actions": 18.0,
                "offline_conversion_purchases": 5.0,
                "offline_conversion_purchases_value": 79.0,
                "cpc": 1.39,
                "cpm": 17.96,
                "ctr": 1.29,
                "cpsc": 5.0,
                "roas": 316.0
            }
        ],
        "totals_by_creative": [
            {
                "creative_id": 3,
                "name": "Creative (Demo) 3",
                "preview_url": "www.demo-rl-data.com/creative_3",
                "status": "active",
                "start_date": "2020-10-01",
                "end_date": null,
                "impressions": 696.0,
                "call_to_action_clicks": 2.0,
                "clicks": 9.0,
                "social_clicks": 4.0,
                "reach": 696.0,
                "social_reach": 44.0,
                "social_impressions": 696.0,
                "website_clicks": 3.0,
                "inline_link_clicks": 4.0,
                "link_click": 2.0,
                "page_engagement": 28.0,
                "like": 40.0,
                "post_engagement": 41.0,
                "comment": 4.0,
                "post": 4.0,
                "post_reaction": 35.0,
                "checkin": 3.0,
                "action_reaction": 2.0,
                "leadgen.other": 0,
                "frequency": 4.0,
                "spend": 6.25,
                "video_p100_watched_actions": 9.0,
                "offline_conversion_purchases": 2.0,
                "offline_conversion_purchases_value": 39.0,
                "cpc": 0.69,
                "cpm": 8.98,
                "ctr": 1.29,
                "cpsc": 3.13,
                "roas": 624.0
            },
            {
                "creative_id": 4,
                "name": "Creative (Demo) 4",
                "preview_url": "www.demo-rl-data.com/creative_4",
                "status": "active",
                "start_date": "2020-10-01",
                "end_date": null,
                "impressions": 696.0,
                "call_to_action_clicks": 3.0,
                "clicks": 9.0,
                "social_clicks": 5.0,
                "reach": 696.0,
                "social_reach": 45.0,
                "social_impressions": 696.0,
                "website_clicks": 4.0,
                "inline_link_clicks": 5.0,
                "link_click": 3.0,
                "page_engagement": 28.0,
                "like": 41.0,
                "post_engagement": 41.0,
                "comment": 4.0,
                "post": 4.0,
                "post_reaction": 36.0,
                "checkin": 4.0,
                "action_reaction": 3.0,
                "leadgen.other": 0,
                "frequency": 5.0,
                "spend": 7.0,
                "video_p100_watched_actions": 9.0,
                "offline_conversion_purchases": 3.0,
                "offline_conversion_purchases_value": 40.0,
                "cpc": 0.78,
                "cpm": 10.06,
                "ctr": 1.29,
                "cpsc": 2.33,
                "roas": 571.43
            }
        ]
    }
}
```

> Example Response with include_cycles=true&focus=wpc

```json
{
    "api_name": "social_creative",
    "api_run_date": "2020-10-26",
    "earliest_date_available": "2020-10-01",
    "start_date": "2020-10-15",
    "end_date": "2020-10-15",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "campaigns": [
            {
                "name": "Facebook Campaign (Demo)",
                "global_master_campaign_id": "TEST_1460473",
                "organization": "reachlocal",
                "start_date": "2020-10-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "goals": [
                    {
                        "goal_type_id": 5,
                        "goal_type": "Reach"
                    },
                    {
                        "goal_type_id": 4,
                        "goal_type": "Engagement"
                    }
                ],
                "impressions": 1392,
                "call_to_action_clicks": 5.0,
                "clicks": 18,
                "social_clicks": 9.0,
                "reach": 1392.0,
                "social_reach": 89.0,
                "social_impressions": 1392.0,
                "website_clicks": 7.0,
                "inline_link_clicks": 9.0,
                "link_click": 5.0,
                "page_engagement": 56.0,
                "like": 81.0,
                "post_engagement": 82.0,
                "comment": 8.0,
                "post": 8.0,
                "post_reaction": 71.0,
                "checkin": 7.0,
                "action_reaction": 5.0,
                "leadgen.other": 0,
                "frequency": 9.0,
                "spend": 25.0,
                "video_p100_watched_actions": 18.0,
                "offline_conversion_purchases": 5.0,
                "offline_conversion_purchases_value": 79.0,
                "cpc": 1.39,
                "cpm": 17.96,
                "ctr": 1.29,
                "cpsc": 5.0,
                "roas": 316.0,
                "cycles": [
                    {
                        "campaign_cycle": "TEST_1460474",
                        "start_date": "2020-10-01",
                        "end_date": "2020-10-20",
                        "impressions": 1392,
                        "call_to_action_clicks": 5.0,
                        "clicks": 18,
                        "social_clicks": 9.0,
                        "reach": 1392.0,
                        "social_reach": 89.0,
                        "social_impressions": 1392.0,
                        "website_clicks": 7.0,
                        "inline_link_clicks": 9.0,
                        "link_click": 5.0,
                        "page_engagement": 56.0,
                        "like": 81.0,
                        "post_engagement": 82.0,
                        "comment": 8.0,
                        "post": 8.0,
                        "post_reaction": 71.0,
                        "checkin": 7.0,
                        "action_reaction": 5.0,
                        "leadgen.other": 0,
                        "frequency": 9.0,
                        "spend": 25.0,
                        "video_p100_watched_actions": 18.0,
                        "offline_conversion_purchases": 5.0,
                        "offline_conversion_purchases_value": 79.0,
                        "cpc": 1.39,
                        "cpm": 17.96,
                        "ctr": 1.29,
                        "cpsc": 5.0,
                        "roas": 316.0,
                        "wpcs": [
                            {
                                "id": 1460475,
                                "name": "Facebook National",
                                "channel": "social",
                                "geo_type": "National",
                                "start_date": "2020-10-01",
                                "end_date": null,
                                "tactic": "Facebook",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 1392,
                                "call_to_action_clicks": 5.0,
                                "clicks": 18,
                                "social_clicks": 9.0,
                                "reach": 1392.0,
                                "social_reach": 89.0,
                                "social_impressions": 1392.0,
                                "website_clicks": 7.0,
                                "inline_link_clicks": 9.0,
                                "link_click": 5.0,
                                "page_engagement": 56.0,
                                "like": 81.0,
                                "post_engagement": 82.0,
                                "comment": 8.0,
                                "post": 8.0,
                                "post_reaction": 71.0,
                                "checkin": 7.0,
                                "action_reaction": 5.0,
                                "leadgen.other": 0,
                                "frequency": 9.0,
                                "spend": 0.0,
                                "video_p100_watched_actions": 18.0,
                                "offline_conversion_purchases": 5.0,
                                "offline_conversion_purchases_value": 79.0,
                                "cpc": 0.0,
                                "cpm": 0.0,
                                "ctr": 1.29,
                                "cpsc": 0.0,
                                "roas": 0,
                                "intervals": [
                                    {
                                        "start_date": "2020-10-15",
                                        "impressions": 1392,
                                        "call_to_action_clicks": 5.0,
                                        "clicks": 18,
                                        "social_clicks": 9.0,
                                        "reach": 1392.0,
                                        "social_reach": 89.0,
                                        "social_impressions": 1392.0,
                                        "website_clicks": 7.0,
                                        "inline_link_clicks": 9.0,
                                        "link_click": 5.0,
                                        "page_engagement": 56.0,
                                        "like": 81.0,
                                        "post_engagement": 82.0,
                                        "comment": 8.0,
                                        "post": 8.0,
                                        "post_reaction": 71.0,
                                        "checkin": 7.0,
                                        "action_reaction": 5.0,
                                        "leadgen.other": 0,
                                        "frequency": 9.0,
                                        "spend": 0.0,
                                        "video_p100_watched_actions": 18.0,
                                        "offline_conversion_purchases": 5.0,
                                        "offline_conversion_purchases_value": 79.0,
                                        "cpc": 0.0,
                                        "cpm": 0.0,
                                        "ctr": 1.29,
                                        "cpsc": 0.0,
                                        "roas": 0
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1392,
            "call_to_action_clicks": 5.0,
            "clicks": 18,
            "social_clicks": 9.0,
            "reach": 1392.0,
            "social_reach": 89.0,
            "social_impressions": 1392.0,
            "website_clicks": 7.0,
            "inline_link_clicks": 9.0,
            "link_click": 5.0,
            "page_engagement": 56.0,
            "like": 81.0,
            "post_engagement": 82.0,
            "comment": 8.0,
            "post": 8.0,
            "post_reaction": 71.0,
            "checkin": 7.0,
            "action_reaction": 5.0,
            "leadgen.other": 0,
            "frequency": 9.0,
            "spend": 25.0,
            "video_p100_watched_actions": 18.0,
            "offline_conversion_purchases": 5.0,
            "offline_conversion_purchases_value": 79.0,
            "cpc": 1.39,
            "cpm": 17.96,
            "ctr": 1.29,
            "cpsc": 5.0,
            "roas": 316.0
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-15",
                "impressions": 1392,
                "call_to_action_clicks": 5.0,
                "clicks": 18,
                "social_clicks": 9.0,
                "reach": 1392.0,
                "social_reach": 89.0,
                "social_impressions": 1392.0,
                "website_clicks": 7.0,
                "inline_link_clicks": 9.0,
                "link_click": 5.0,
                "page_engagement": 56.0,
                "like": 81.0,
                "post_engagement": 82.0,
                "comment": 8.0,
                "post": 8.0,
                "post_reaction": 71.0,
                "checkin": 7.0,
                "action_reaction": 5.0,
                "leadgen.other": 0,
                "frequency": 9.0,
                "spend": 25.0,
                "video_p100_watched_actions": 18.0,
                "offline_conversion_purchases": 5.0,
                "offline_conversion_purchases_value": 79.0,
                "cpc": 1.39,
                "cpm": 17.96,
                "ctr": 1.29,
                "cpsc": 5.0,
                "roas": 316.0
            }
        ],
        "totals_by_creative": [
            {
                "creative_id": 3,
                "name": "Creative (Demo) 3",
                "preview_url": "www.demo-rl-data.com/creative_3",
                "status": "active",
                "start_date": "2020-10-01",
                "end_date": null,
                "impressions": 696.0,
                "call_to_action_clicks": 2.0,
                "clicks": 9.0,
                "social_clicks": 4.0,
                "reach": 696.0,
                "social_reach": 44.0,
                "social_impressions": 696.0,
                "website_clicks": 3.0,
                "inline_link_clicks": 4.0,
                "link_click": 2.0,
                "page_engagement": 28.0,
                "like": 40.0,
                "post_engagement": 41.0,
                "comment": 4.0,
                "post": 4.0,
                "post_reaction": 35.0,
                "checkin": 3.0,
                "action_reaction": 2.0,
                "leadgen.other": 0,
                "frequency": 4.0,
                "spend": 6.25,
                "video_p100_watched_actions": 9.0,
                "offline_conversion_purchases": 2.0,
                "offline_conversion_purchases_value": 39.0,
                "cpc": 0.69,
                "cpm": 8.98,
                "ctr": 1.29,
                "cpsc": 3.13,
                "roas": 624.0
            },
            {
                "creative_id": 4,
                "name": "Creative (Demo) 4",
                "preview_url": "www.demo-rl-data.com/creative_4",
                "status": "active",
                "start_date": "2020-10-01",
                "end_date": null,
                "impressions": 696.0,
                "call_to_action_clicks": 3.0,
                "clicks": 9.0,
                "social_clicks": 5.0,
                "reach": 696.0,
                "social_reach": 45.0,
                "social_impressions": 696.0,
                "website_clicks": 4.0,
                "inline_link_clicks": 5.0,
                "link_click": 3.0,
                "page_engagement": 28.0,
                "like": 41.0,
                "post_engagement": 41.0,
                "comment": 4.0,
                "post": 4.0,
                "post_reaction": 36.0,
                "checkin": 4.0,
                "action_reaction": 3.0,
                "leadgen.other": 0,
                "frequency": 5.0,
                "spend": 7.0,
                "video_p100_watched_actions": 9.0,
                "offline_conversion_purchases": 3.0,
                "offline_conversion_purchases_value": 40.0,
                "cpc": 0.78,
                "cpm": 10.06,
                "ctr": 1.29,
                "cpsc": 2.33,
                "roas": 571.43
            }
        ]
    }
}
```


> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign cycle
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?campaign_cycle=USA_100"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_creative/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

> Retrieve data for a specific focus
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&focus=wpc"
```
> Response Description
**Base Report**

| Field Name | Datatype | Description |
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|advertiser_name|String|Name of the Advertiser|
|report_data|Object|Report details|

**Report Data Object**

| Field Name | Datatype | Description |
|---|---|---|
|campaigns|Object|Data for specified campaign|
|totals|Object|Data for Overall Totals|
|totals_per_interval|Object|Overall Totals Broken Down by Interval|
|totals_by_creative|Object|Overall Totals Broken Down by Creative|

**Campaigns Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| name | String | No | Campaign Name |
| global_master_campaign_id | String | No | Unique Identifier for Campaign |
| organization | String | No | Either reachlocal or gannett |
| start_date | String | No | Campaign Start Date |
| end_date | String | Yes | Campaign End Date |
| type | String | No | Type of Campaign |
| status | String | No | Status of Campaign |
| goals | Array | No | Array of Goals |
| cycles | Cycle[] | No | Array of Cycles |
| impressions | Int | No | Total Impressions for Campaign |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Campaign |
| clicks | Int | No | Total Clicks for Campaign |
| social_clicks | Int | No | Total Social Clicks for Campaign |
| reach | Int | No | Total Reach for Campaign |
| social_reach | Int | No | Total Social Reach for Campaign |
| social_impressions | Int | No | Total Social Impressions for Campaign |
| website_clicks | Int | No | Total Website Clicks for Campaign |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Campaign |
| link_click | Int | No | Total Link Clicks for Campaign |
| page_engagement | Int | No | Total Page Engagement for Campaign |
| like | Int | No | Total Likes for Campaign |
| post_engagement | Int | No | Total Post Engagement for Campaign |
| comment | Int | No | Total Comments for Campaign |
| post | Int | No | Total Posts for Campaign |
| post_reaction | Int | No | Total Post Reactions for Campaign |
| checkin | Int | No | Total Checkins for Campaign |
| action_reaction | Int | No | Total Action Reaction for Campaign |
| leadgen.other | Int | No | Total leadgen.other for Campaign |
| frequency | Int | No | Total Frequency for Campaign |
| spend | Int | No | Total Spend for Campaign |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Campaign |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Campaign |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Campaign |
| cpc | Int | No | Total Cost per Click for Campaign |
| cpm | Int | No | Total Cost per Milli for Campaign |
| ctr | Int | No | Total Click Through Rate for Campaign |
| cpsc | Int | No | Total CPSC for Campaign |
| roas | Int | No | Total ROAS for Campaign |
| cycles | Cycle[] | No | Array of cycles |
| campaigns | Campaign[] | No | Array of campaigns |

**Cycles Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| campaign_cycle | String | No | Unique Identifier for Cycle |
| start_date | String | No | Cycle Start Date |
| end_date | String | Yes | Cycle End Date |
| impressions | Int | No | Total Impressions for Cycle |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Cycle |
| clicks | Int | No | Total Clicks for Cycle |
| social_clicks | Int | No | Total Social Clicks for Cycle |
| reach | Int | No | Total Reach for Cycle |
| social_reach | Int | No | Total Social Reach for Cycle |
| social_impressions | Int | No | Total Social Impressions for Cycle |
| website_clicks | Int | No | Total Website Clicks for Cycle |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Cycle |
| link_click | Int | No | Total Link Clicks for Cycle |
| page_engagement | Int | No | Total Page Engagement for Cycle |
| like | Int | No | Total Likes for Cycle |
| post_engagement | Int | No | Total Post Engagement for Cycle |
| comment | Int | No | Total Comments for Cycle |
| post | Int | No | Total Posts for Cycle |
| post_reaction | Int | No | Total Post Reactions for Cycle |
| checkin | Int | No | Total Checkins for Cycle |
| action_reaction | Int | No | Total Action Reaction for Cycle |
| leadgen.other | Int | No | Total leadgen.other for Cycle |
| frequency | Int | No | Total Frequency for Cycle |
| spend | Int | No | Total Spend for Cycle |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Cycle |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Cycle |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Cycle |
| cpc | Int | No | Total Cost per Click for Cycle |
| cpm | Int | No | Total Cost per Milli for Cycle |
| ctr | Int | No | Total Click Through Rate for Cycle |
| cpsc | Int | No | Total CPSC for Cycle |
| roas | Int | No | Total ROAS for Cycle |
| wpcs | WPC[] | No | Array of WPCs |

**WPCs (Web Publisher Campaign) Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| id | String | No | Unique Identifier for WPC |
| name | String | No | Name of WPC |
| channel | String | No | Channel for WPC |
| geo_type | String | No | GeoType for WPC |
| start_date | String | No | WPC Start Date |
| end_date | String | Yes | WPC End Date |
| tactic | String | No | Tactic for WPC (Offer Name) |
| external_account_id | String | No | External Account ID for WPC |
| external_account_name | String | No | External Account Name for WPC |
| impressions | Int | No | Total Impressions for Cycle |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Cycle |
| clicks | Int | No | Total Clicks for Cycle |
| social_clicks | Int | No | Total Social Clicks for Cycle |
| reach | Int | No | Total Reach for Cycle |
| social_reach | Int | No | Total Social Reach for Cycle |
| social_impressions | Int | No | Total Social Impressions for Cycle |
| website_clicks | Int | No | Total Website Clicks for Cycle |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Cycle |
| link_click | Int | No | Total Link Clicks for Cycle |
| page_engagement | Int | No | Total Page Engagement for Cycle |
| like | Int | No | Total Likes for Cycle |
| post_engagement | Int | No | Total Post Engagement for Cycle |
| comment | Int | No | Total Comments for Cycle |
| post | Int | No | Total Posts for Cycle |
| post_reaction | Int | No | Total Post Reactions for Cycle |
| checkin | Int | No | Total Checkins for Cycle |
| action_reaction | Int | No | Total Action Reaction for Cycle |
| leadgen.other | Int | No | Total leadgen.other for Cycle |
| frequency | Int | No | Total Frequency for Cycle |
| spend | Int | No | Total Spend for Cycle |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Cycle |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Cycle |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Cycle |
| cpc | Int | No | Total Cost per Click for Cycle |
| cpm | Int | No | Total Cost per Milli for Cycle |
| ctr | Int | No | Total Click Through Rate for Cycle |
| cpsc | Int | No | Total CPSC for Cycle |
| roas | Int | No | Total ROAS for Cycle |
| intervals | Interval[] | No | Array of Intervals |
| creatives | Creative[] | No | Array of Creatives |

**Creative Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| creative_id | String | No | Unique Identifier for Creative |
| name | String | No | Name of Creative |
| preview_url | String | No | Preview URL for Creative |
| status | String | No | Status for Creative.  |
| start_date | String | No | Start Date of Creative |
| end_date | String | Yes | End Date of Creative |
| impressions | Int | No | Total Impressions for Creative |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Creative |
| clicks | Int | No | Total Clicks for Creative |
| social_clicks | Int | No | Total Social Clicks for Creative |
| reach | Int | No | Total Reach for Creative |
| social_reach | Int | No | Total Social Reach for Creative |
| social_impressions | Int | No | Total Social Impressions for Creative |
| website_clicks | Int | No | Total Website Clicks for Creative |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Creative |
| link_click | Int | No | Total Link Clicks for Creative |
| page_engagement | Int | No | Total Page Engagement for Creative |
| like | Int | No | Total Likes for Creative |
| post_engagement | Int | No | Total Post Engagement for Creative |
| comment | Int | No | Total Comments for Creative |
| post | Int | No | Total Posts for Creative |
| post_reaction | Int | No | Total Post Reactions for Creative |
| checkin | Int | No | Total Checkins for Creative |
| action_reaction | Int | No | Total Action Reaction for Creative |
| leadgen.other | Int | No | Total leadgen.other for Creative |
| frequency | Int | No | Total Frequency for Creative |
| spend | Int | No | Total Spend for Creative |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Creative |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Creative |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Creative |
| cpc | Int | No | Total Cost per Click for Creative |
| cpm | Int | No | Total Cost per Milli for Creative |
| ctr | Int | No | Total Click Through Rate for Creative |
| cpsc | Int | No | Total CPSC for Creative |
| roas | Int | No | Total ROAS for Creative |
| intervals | Interval[] | No | Array of Intervals |
| creatives | Creative[] | No | Array of Creatives |

**Intervals Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| start_date | String | No | Start Date for Interval |
| impressions | Int | No | Total Impressions for Interval |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Interval |
| clicks | Int | No | Total Clicks for Interval |
| social_clicks | Int | No | Total Social Clicks for Interval |
| reach | Int | No | Total Reach for Interval |
| social_reach | Int | No | Total Social Reach for Interval |
| social_impressions | Int | No | Total Social Impressions for Interval |
| website_clicks | Int | No | Total Website Clicks for Interval |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Interval |
| link_click | Int | No | Total Link Clicks for Interval |
| page_engagement | Int | No | Total Page Engagement for Interval |
| like | Int | No | Total Likes for Interval |
| post_engagement | Int | No | Total Post Engagement for Interval |
| comment | Int | No | Total Comments for Interval |
| post | Int | No | Total Posts for Interval |
| post_reaction | Int | No | Total Post Reactions for Interval |
| checkin | Int | No | Total Checkins for Interval |
| action_reaction | Int | No | Total Action Reaction for Interval |
| leadgen.other | Int | No | Total leadgen.other for Interval |
| frequency | Int | No | Total Frequency for Interval |
| spend | Int | No | Total Spend for Interval |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Interval |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Interval |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Interval |
| cpc | Int | No | Total Cost per Click for Interval |
| cpm | Int | No | Total Cost per Milli for Interval |
| ctr | Int | No | Total Click Through Rate for Interval |
| cpsc | Int | No | Total CPSC for Interval |
| roas | Int | No | Total ROAS for Interval |

**Totals Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| impressions | Int | No | Total Impressions |
| call_to_action_clicks | Int | No | Total Call to Action Clicks |
| clicks | Int | No | Total Clicks |
| social_clicks | Int | No | Total Social Clicks |
| reach | Int | No | Total Reach |
| social_reach | Int | No | Total |
| social_impressions | Int | No | Total Social Impressions |
| website_clicks | Int | No | Total Website Clicks |
| inline_link_clicks | Int | No | Total Inline Link Clicksl |
| link_click | Int | No | Total Link Clicks |
| page_engagement | Int | No | Total Page Engagement |
| like | Int | No | Total Likes |
| post_engagement | Int | No | Total Post Engagement |
| comment | Int | No | Total Comments |
| post | Int | No | Total Posts |
| post_reaction | Int | No | Total Post Reactions |
| checkin | Int | No | Total Checkins |
| action_reaction | Int | No | Total Action Reaction |
| leadgen.other | Int | No | Total leadgen.other |
| frequency | Int | No | Total Frequency |
| spend | Int | No | Total Spend |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value |
| cpc | Int | No | Total Cost per Click |
| cpm | Int | No | Total Cost per Milli |
| ctr | Int | No | Total Click Through Rate |
| cpsc | Int | No | Total CPSC |
| roas | Int | No | Total ROAS |

**Creative Status**
| Status | Description |
|---|---|
active |The creative has been successfully pushed to publisher. At present there are no changes on the creatives pending to be sent to publisher.|
active_edit_pending | Edit on the creative has been done and it's approved. It's yet to be pushed to publisher.|
paused | The creative is in paused status at present. This change has already been pushed to publisher.There are no changes on the creative pending to be sent to the publisher. |
paused_pending |The creative is paused and change has been approved. It's yet to be pushed out to publisher. |
disabled |The creative is in deleted status at present. This change has already been pushed to publisher.There are no changes on the creative pending to be sent to the publisher. |
disabled_pending |The creative is deleted and change has been approved. It's yet to be pushed out to publisher. |
ended|The campaign has ended. |
new |The creative is brand new and the Campaign is yet to be provisioned, thus not yet pushed to any publisher. |

**Totals Per Interval Object**

This is an Interval object across all campaigns.

**Totals by Creative Object**

Totals for each creative across all campaigns and intervals.
