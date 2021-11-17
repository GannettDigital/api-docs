## SocialAds Ad Set Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/social_ad_set/[gmaid]?[query_params] |

This API can be used to retrieve metrics for Social campaigns broken down by campaign, cycle, web publisher campaign, ad set and creative.

Use GET to retrieve metrics for a Social campaign. Metrics can be returned for a GMAID for a specific date range determined by start_date and end_date. Metrics can be retrieved for a specified campaign or cycle.

The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|start_date| yes |--|Restricts the results to those ocurring on or after this date|
|end_date| yes |--|Restricts the results to those ocurring on or before this date|
|global_master_campaign_id[]| no |--|Restrict results to one or more specific campaigns|
|campaign_status[]| no |running|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended|
|campaign_cycle| no |--|Restrict results to a single campaign cycle|
|include_cycles| no | false |Set to true or false on whether to include cycle nesting.  Default value is false|

### Response Data Details

> Example Response with include_cycles=false

```json
{
    "api_name": "social_ad_set",
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
                "chats": 9,
                "calls": 0,
                "emails": 9,
                "qualified_web_events": 0.0,
                "non_qualified_web_events": 0.0,
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
                "spend": 25.0,
                "relevance_score": 10.0,
                "onsite_conversion_lead_grouped": 5.0,
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
                      "calls": 0,
                      "emails": 0,
                      "position": 0,
                      "click_to_call": 0,
                      "qualified_web_event": 0,
                      "non_qualified_web_event":0,
                      "call_to_action_clicks": 5.0,
                      "clicks": 18,
                      "chats": 9,
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
                      "onsite_conversion_lead_grouped": 5.0,
                      "spend": 0.0,
                      "relevance_score": 10.0,
                      "video_p100_watched_actions": 18.0,
                      "offline_conversion_purchases": 5.0,
                      "offline_conversion_purchases_value": 79.0,
                      "cpc": 0.0,
                      "cpm": 0.0,
                      "ctr": 1.29,
                      "cpsc": 0.0,
                      "roas": 0,
                      "ad_sets": [
                        {
                          "id":1,
                          "start_date": "2018-01-31",
                          "end_date": "2021-08-30",
                          "facebook_id": 1, 
                          "name": "FB Ad Set1",
                          "target_min_age": 18,
                          "target_max_age": 30,
                          "target_device_type": "Mobile",
                          "target_gender": "All",
                          "optimization_event": "View Content",
                          "impressions": 100,
                          "calls": 0,
                          "emails": 0,
                          "qualified_web_events": 0.0,
                          "non_qualified_web_events": 0.0,
                          "clicks": 10,
                          "reach": 10,
                          "inline_link_clicks": 10,
                          "link_click": 10,
                          "page_engagement": 10,
                          "like": 10,
                          "post_engagement": 10,
                          "comment": 10,
                          "post": 10,
                          "post_reaction": 10,
                          "checkin": 10,
                          "action_reaction": 10,
                          "frequency": 10,
                          "spend": 10,
                          "relevance_score": 10.0,
                          "onsite_conversion_lead_grouped": 10,
                          "video_p100_watched_actions": 10,
                          "offline_conversion_purchases": 10,
                          "offline_conversion_purchases_value": 100.0,
                          "unique_link_click": 10,
                          "creatives": [
                                    {
                                      "creative_id": 19121514,
                                      "name": "Single Image Ad",
                                      "preview_url": "https://ws.reachlocal.com/facebookshim/adpreviews/1234567",
                                      "status": "ended",
                                      "start_date": "2018-01-31",
                                      "end_date": "2021-08-30",
                                      "impressions": 4461.0,
                                      "calls": 0,
                                      "emails": 0,
                                      "qualified_web_events": 0.0,
                                      "non_qualified_web_events": 0.0,
                                      "call_to_action_clicks": 0,
                                      "clicks": 33.0,
                                      "social_clicks": 0,
                                      "reach": 7159.0,
                                      "social_reach": 0,
                                      "social_impressions": 0,
                                      "website_clicks": 0,
                                      "inline_link_clicks": 47.0,
                                      "link_click": 47.0,
                                      "page_engagement": 55.0,
                                      "like": 0,
                                      "post_engagement": 55.0,
                                      "comment": 0,
                                      "post": 0,
                                      "post_reaction": 7.0,
                                      "checkin": 0,
                                      "action_reaction": 0,
                                      "chats": 0,
                                      "spend": 51.12,
                                      "relevance_score": 10.0,
                                      "video_p100_watched_actions": 0,
                                      "offline_conversion_purchases": 0,
                                      "offline_conversion_purchases_value": 0,
                                      "cpc": 1.55,
                                      "cpm": 11.46,
                                      "ctr": 0.74,
                                      "cpsc": 0,
                                      "roas": 0.0
                                    },
                                    {
                                      "creative_id": 19458026,
                                      "name": "carousel",
                                      "preview_url": "https://ws.reachlocal.com/facebookshim/adpreviews/12345",
                                      "status": "ended",
                                      "start_date": "2018-04-10",
                                      "end_date": "2021-08-30",
                                      "impressions": 9359.0,
                                      "calls": 0,
                                      "emails": 0,
                                      "qualified_web_events": 0.0,
                                      "non_qualified_web_events": 0.0,
                                      "call_to_action_clicks": 0,
                                      "clicks": 71.0,
                                      "social_clicks": 0,
                                      "reach": 14739.0,
                                      "social_reach": 0,
                                      "social_impressions": 0,
                                      "website_clicks": 0,
                                      "inline_link_clicks": 87.0,
                                      "link_click": 87.0,
                                      "page_engagement": 90.0,
                                      "like": 0,
                                      "post_engagement": 90.0,
                                      "comment": 0,
                                      "post": 0,
                                      "post_reaction": 3.0,
                                      "checkin": 0,
                                      "action_reaction": 0,
                                      "chats": 0,
                                      "spend": 88.08,
                                      "relevance_score": 10.0,
                                      "video_p100_watched_actions": 0,
                                      "offline_conversion_purchases": 0,
                                      "offline_conversion_purchases_value": 0,
                                      "cpc": 1.24,
                                      "cpm": 9.41,
                                      "ctr": 0.76,
                                      "cpsc": 0,
                                      "roas": 0.0
                                    }
                                ]
                            }
                        ]  
                    }
                ]
            }
        ],
        "totals": {
            "clicks": 278,
            "impressions": 41456,
            "spend": 1035.02,
            "relevance_score": 0,
            "cpc": 3.72,
            "cpm": 24.97,
            "ctr": 0.67,
            "chats": 0,
            "emails": 9,
            "calls": 0,
            "qualified_web_events": 0,
            "non_qualified_web_events": 0,
            "reach": 30308.0,
            "inline_link_clicks": 189.0,
            "link_click": 189.0,
            "page_engagement": 202.0,
            "like": 0,
            "post_engagement": 202.0,
            "comment": 1.0,
            "post": 1.0,
            "post_reaction": 10.0,
            "checkin": 0,
            "action_reaction": 0,
            "onsite_conversion_lead_grouped": 9.0,
            "video_p100_watched_actions": 0,
            "offline_conversion_purchases": 0,
            "offline_conversion_purchases_value": 0,
            "unique_link_click": 179.0,
            "social_reach": 0,
            "social_impressions": 0,
            "website_clicks": 0,
            "call_to_action_clicks": 0,
            "social_clicks": 0,
            "cpsc": 0,
            "roas": 0.0
        },
    }
}
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_ad_set/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_ad_set/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign cycle
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_ad_set/TEST_1?campaign_cycle=USA_100"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_ad_set/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/social_ad_set/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
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
| calls | Int | No | Total Calls for Campaign |
| emails | Int | No | Total emails for Campaign |
| qualified_web_events | Int | No | Total qualified_web_events for Campaign |
| non_qualified_web_events | Int | No | Total non_qualified_web_events for Campaign |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Campaign |
| clicks | Int | No | Total Clicks for Campaign |
| chats | Int | No | Total chat generated by paid traffic |
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
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for Campaign |
| frequency | Int | No | Total Frequency for Campaign |
| spend | Int | No | Total Spend for Campaign |
| relevance_score | Float | No | Average relevance score see https://www.facebook.com/business/news/relevance-score |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Campaign |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Campaign |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Campaign |
| cpc | Float | No | Total Cost per Click for Campaign |
| cpm | Float | No | Total Cost per Milli for Campaign |
| ctr | Float | No | Total Click Through Rate for Campaign |
| cpsc | Float | No | Total CPSC for Campaign |
| roas | Float | No | Total ROAS for Campaign |
| cycles | Cycle[] | No | Array of cycles |
| campaigns | Campaign[] | No | Array of campaigns |

**Cycles Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| campaign_cycle | String | No | Unique Identifier for Cycle |
| start_date | String | No | Cycle Start Date |
| end_date | String | Yes | Cycle End Date |
| impressions | Int | No | Total Impressions for Cycle |
| calls | Int | No | Total Calls for Cycle |
| emails | Int | No | Total emails for Cycle |
| qualified_web_events | Int | No | Total qualified_web_events for Cycle |
| non_qualified_web_events | Int | No | Total non_qualified_web_events for Cycle |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Cycle |
| clicks | Int | No | Total Clicks for Cycle |
| chats | Int | No | Total chat generated by paid traffic |
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
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for Campaign |
| frequency | Int | No | Total Frequency for Cycle |
| spend | Int | No | Total Spend for Cycle |
| relevance_score | Float | No | Average relevance score see https://www.facebook.com/business/news/relevance-score |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Cycle |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Cycle |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Cycle |
| cpc | Float | No | Total Cost per Click for Cycle |
| cpm | Float | No | Total Cost per Milli for Cycle |
| ctr | Float | No | Total Click Through Rate for Cycle |
| cpsc | Float | No | Total CPSC for Cycle |
| roas | Float | No | Total ROAS for Cycle |
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
| impressions | Int | No | Total Impressions for WPC |
| calls | Int | No | Total Calls for WPC |
| emails | Int | No | Total emails for WPC |
| qualified_web_events | Int | No | Total qualified_web_events for WPC |
| non_qualified_web_events | Int | No | Total non_qualified_web_events for WPC |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for WPC |
| clicks | Int | No | Total Clicks for WPC |
| chats | Int | No | Total chat generated by paid traffic|
| social_clicks | Int | No | Total Social Clicks for WPC |
| reach | Int | No | Total Reach for WPC |
| social_reach | Int | No | Total Social Reach for WPC |
| social_impressions | Int | No | Total Social Impressions for WPC |
| website_clicks | Int | No | Total Website Clicks for WPC |
| inline_link_clicks | Int | No | Total Inline Link Clicks for WPC |
| link_click | Int | No | Total Link Clicks for WPC |
| page_engagement | Int | No | Total Page Engagement for WPC |
| like | Int | No | Total Likes for WPC |
| post_engagement | Int | No | Total Post Engagement for WPC |
| comment | Int | No | Total Comments for WPC |
| post | Int | No | Total Posts for WPC |
| post_reaction | Int | No | Total Post Reactions for WPC |
| checkin | Int | No | Total Checkins for WPC |
| action_reaction | Int | No | Total Action Reaction for WPC |
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for WPC |
| frequency | Int | No | Total Frequency for WPC |
| spend | Int | No | Total Spend for WPC |
| relevance_score | Float | No | Average relevance score see https://www.facebook.com/business/news/relevance-score |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for WPC |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for WPC|
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for WPC|
| cpc | Int | No | Total Cost per Click for WPC |
| cpm | Int | No | Total Cost per Milli for WPC |
| ctr | Int | No | Total Click Through Rate for WPC |
| cpsc | Int | No | Total CPSC for WPC |
| roas | Int | No | Total ROAS for WPC |
| ad_sets | AdSets[] | No | Array of Ad Sets |

**Ad Sets Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| id | String | No | Unique Identifier for Ad Set |
| name | String | No | Name of Ad Set |
| target_min_age | String | No | Target Miniumum Age |
| target_max_age | String | No | Target Maximum Age  |
| target_device_type | String | No | Target Device Type |
| target_gender | String | Yes | Target Gender (Male,Female,All) |
| optimization_event | String | No | Optimization Event |
| facebook_id | String | No | External Facebook ID for Ad Set |
| impressions | Int | No | Total Impressions for Ad Set |
| call_to_action_clicks | Int | No | Total Call to Action Clicks for Ad Set |
| clicks | Int | No | Total Clicks for Ad Set |
| social_clicks | Int | No | Total Social Clicks for Ad Set |
| reach | Int | No | Total Reach for Ad Set |
| social_reach | Int | No | Total Social Reach for Ad Set |
| social_impressions | Int | No | Total Social Impressions for Ad Set |
| website_clicks | Int | No | Total Website Clicks for Ad Set |
| inline_link_clicks | Int | No | Total Inline Link Clicks for Ad Set |
| link_click | Int | No | Total Link Clicks for Ad Set |
| page_engagement | Int | No | Total Page Engagement for Ad Set |
| like | Int | No | Total Likes for Ad Set |
| post_engagement | Int | No | Total Post Engagement for Ad Set |
| comment | Int | No | Total Comments for Ad Set |
| post | Int | No | Total Posts for Ad Set |
| post_reaction | Int | No | Total Post Reactions for Ad Set |
| checkin | Int | No | Total Checkins for Ad Set |
| action_reaction | Int | No | Total Action Reaction for Ad Set |
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for Ad Set |
| frequency | Int | No | Total Frequency for Ad Set |
| spend | Int | No | Total Spend for Ad Set |
| relevance_score | Float | No | Average relevance score see https://www.facebook.com/business/news/relevance-score |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Ad Set |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Ad Set|
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Ad Set|
| cpc | Float | No | Total Cost per Click for Ad Set |
| cpm | Float | No | Total Cost per Milli for Ad Set |
| ctr | Float | No | Total Click Through Rate for Ad Set |
| cpsc | Float | No | Total CPSC for Ad Set |
| roas | Float | No | Total ROAS for Ad Set |
| creatives[] | No | Array of Creatives |


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
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for Campaign |
| frequency | Int | No | Total Frequency for Creative |
| spend | Int | No | Total Spend for Creative |
| relevance_score | Float | No | Average relevance score see https://www.facebook.com/business/news/relevance-score |
| video_p100_watched_actions | Int | No | Total Videos Watched to 100 percent for Creative |
| offline_conversion_purchases | Int | No | Total Offline Conversion Purchases for Creative |
| offline_conversion_purchases_value | Int | No | Total Offline Conversion Purchase Value for Creative |
| cpc | Float | No | Total Cost per Click for Creative |
| cpm | Float | No | Total Cost per Milli for Creative |
| ctr | Float | No | Total Click Through Rate for Creative |
| cpsc | Float | No | Total CPSC for Creative |
| roas | Float | No | Total ROAS for Creative |

**Totals Object**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| impressions | Int | No | Total Impressions |
| calls | Int | No | Total Calls  |
| emails | Int | No | Total emails |
| qualified_web_events | Int | No | Total qualified_web_events |
| non_qualified_web_events | Int | No | Total non_qualified_web_events |
| call_to_action_clicks | Int | No | Total Call to Action Clicks |
| clicks | Int | No | Total Clicks |
| chats | Int | No | Total chat generated by paid traffic |
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
| onsite_conversion_lead_grouped | Int | No | Total Onsite Conversion Lead Grouped for Campaign |
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
