### **SocialAds Campaign Metrics**
<a name="socialads_campaign_metrics"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/facebook_campaign/[gmaid]?[query_params]|

Use GET to retrieve information for the SocialAds Campaign Report for a given advertiser.

The data returned will include various metrics organized by campaign and campaign\_cycle.  If no values are present for a given metric, 0 is assumed, except for **offline_conversion_purchases**, **offline_conversion_purchases_value**, **cpsc** and **roas**, which will be omitted from the result if not present.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|campaign_cycle|Restrict results to a single campaign cycle|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles|Set to true or false on whether to include cycle nesting.  Default value is false|
|focus| Optional.  Value must be `goal` |
|goal_type_ids[]| Optional.  Focus must be specified as `goal`.  Must be an array of valid goal_type_ids |
|include_full_channel|Optional, default: false.  Includes all metrics for the social channel.  Xmedia campaigns will only contain metrics that are categorized as social, rather than full campaign metrics.|
|<internal> markup_type|Only supported value is 'percentage' </internal>|
|<internal> markup_value|"cost" fields (spend & budget) will be marked up by this pecentage </internal>|

**To specify a date range**

* Specify start_date and end_date.
* When specifying a **campaign_cycle**, do not use date range params.

**Valid Goal Type Ids**

| Goal Type Id |Goal Types |
|---|---|
| 1 | CPL|
| 2 | Calls|
| 3 | Contacts|
| 4 | Engagement|
| 5 | Reach|
| 6 | Contacts (Dynamic Ads - Automotive)|
| 7 | Sales|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?campaign_cycle=TEST_1
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?&campaign_status[]=running,stopped&start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-12-01&end_date=2016-12-31&include_cycles=true
```

> Example Response:

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?start_date=2020-06-26&end_date=2020-06-27
```

> Example Response

```json

{
    "report_type": "facebook_campaign",
    "report_date": "2020-10-15",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Facebook Campaign (Demo)",
                "global_master_campaign_id": "TEST_1368565",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "display",
                "status": "running",
                "goals": [
                    {
                        "goal_type_id": 4,
                        "goal_type": "Engagement"
                    },
                    {
                        "goal_type_id": 5,
                        "goal_type": "Reach"
                    }
                ],
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "impressions": 1403,
                        "call_to_action_clicks": 5,
                        "clicks": 16,
                        "social_clicks": 10,
                        "reach": 1403,
                        "social_reach": 70,
                        "social_impressions": 1403,
                        "website_clicks": 8,
                        "inline_link_clicks": 5,
                        "link_click": 9,
                        "page_engagement": 77,
                        "like": 85,
                        "post_engagement": 84,
                        "comment": 8,
                        "post": 9,
                        "post_reaction": 65,
                        "checkin": 8,
                        "action_reaction": 9,
                        "leadgen.other": 0,
                        "frequency": 5,
                        "spend": 25,
                        "video_p100_watched_actions": 20,
                        "video_avg_percent_watched_actions": 76,
                        "offline_conversion_purchases": 7,
                        "offline_conversion_purchases_value": 82,
                        "leads": 18,
                        "cpc": 1.56,
                        "cpm": 17.82,
                        "ctr": 1.14,
                        "cpsc": 3.57,
                        "roas": 328
                    }
                ]
            }
        ],
        "totals": {
            "impressions_breakdown": {
                "age_18-24_gender_male": 60061.0,
                "age_18-24_gender_female": 58497.0,
                "age_25-34_gender_male": 126873.0,
                "age_25-34_gender_female": 77115.0,
                "age_35-44_gender_male": 64724.0,
                "age_35-44_gender_female": 36731.0,
                "age_45-54_gender_male": 39743.0,
                "age_45-54_gender_female": 20413.0,
                "age_55-64_gender_male": 29282.0,
                "age_55-64_gender_female": 21530.0,
                "age_65+_gender_male": 22916.0,
                "age_65+_gender_female": 20473.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 367.0,
                "age_25-34_gender_unknown": 1014.0,
                "age_35-44_gender_unknown": 679.0,
                "age_45-54_gender_unknown": 269.0,
                "age_55-64_gender_unknown": 378.0,
                "age_65+_gender_unknown": 282.0,
                "age_13-17_gender_unknown": 0,
                "device_other": 2915.0,
                "device_desktop": 32776.0,
                "device_iphone": 274083.0,
                "device_ipad": 7901.0,
                "device_ipod": 120.0,
                "device_android_smartphone": 257281.0,
                "device_android_tablet": 6271.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "call_to_action_clicks_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "clicks_breakdown": {
                "age_18-24_gender_male": 183.0,
                "age_18-24_gender_female": 123.0,
                "age_25-34_gender_male": 234.0,
                "age_25-34_gender_female": 150.0,
                "age_35-44_gender_male": 130.0,
                "age_35-44_gender_female": 85.0,
                "age_45-54_gender_male": 87.0,
                "age_45-54_gender_female": 69.0,
                "age_55-64_gender_male": 128.0,
                "age_55-64_gender_female": 151.0,
                "age_65+_gender_male": 175.0,
                "age_65+_gender_female": 223.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 1.0,
                "age_35-44_gender_unknown": 1.0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 4.0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 16.0,
                "device_desktop": 71.0,
                "device_iphone": 615.0,
                "device_ipad": 85.0,
                "device_ipod": 0,
                "device_android_smartphone": 891.0,
                "device_android_tablet": 66.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "social_clicks_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "reach_breakdown": {
                "age_18-24_gender_male": 57744.0,
                "age_18-24_gender_female": 54131.0,
                "age_25-34_gender_male": 123207.0,
                "age_25-34_gender_female": 73048.0,
                "age_35-44_gender_male": 61341.0,
                "age_35-44_gender_female": 34512.0,
                "age_45-54_gender_male": 36355.0,
                "age_45-54_gender_female": 18871.0,
                "age_55-64_gender_male": 26896.0,
                "age_55-64_gender_female": 19463.0,
                "age_65+_gender_male": 19927.0,
                "age_65+_gender_female": 16737.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 325.0,
                "age_25-34_gender_unknown": 958.0,
                "age_35-44_gender_unknown": 599.0,
                "age_45-54_gender_unknown": 209.0,
                "age_55-64_gender_unknown": 302.0,
                "age_65+_gender_unknown": 222.0,
                "age_13-17_gender_unknown": 0,
                "device_other": 2715.0,
                "device_desktop": 27900.0,
                "device_iphone": 264095.0,
                "device_ipad": 7323.0,
                "device_ipod": 79.0,
                "device_android_smartphone": 241351.0,
                "device_android_tablet": 5427.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "social_impressions_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "website_clicks_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "link_click_breakdown": {
                "age_18-24_gender_male": 8.0,
                "age_18-24_gender_female": 8.0,
                "age_25-34_gender_male": 13.0,
                "age_25-34_gender_female": 13.0,
                "age_35-44_gender_male": 5.0,
                "age_35-44_gender_female": 2.0,
                "age_45-54_gender_male": 5.0,
                "age_45-54_gender_female": 5.0,
                "age_55-64_gender_male": 6.0,
                "age_55-64_gender_female": 15.0,
                "age_65+_gender_male": 13.0,
                "age_65+_gender_female": 21.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 1.0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 1.0,
                "device_desktop": 5.0,
                "device_iphone": 32.0,
                "device_ipad": 7.0,
                "device_ipod": 0,
                "device_android_smartphone": 61.0,
                "device_android_tablet": 9.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "page_engagement_breakdown": {
                "age_18-24_gender_male": 8.0,
                "age_18-24_gender_female": 8.0,
                "age_25-34_gender_male": 14.0,
                "age_25-34_gender_female": 13.0,
                "age_35-44_gender_male": 5.0,
                "age_35-44_gender_female": 2.0,
                "age_45-54_gender_male": 5.0,
                "age_45-54_gender_female": 5.0,
                "age_55-64_gender_male": 6.0,
                "age_55-64_gender_female": 15.0,
                "age_65+_gender_male": 14.0,
                "age_65+_gender_female": 22.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 1.0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 1.0,
                "device_desktop": 5.0,
                "device_iphone": 33.0,
                "device_ipad": 8.0,
                "device_ipod": 0,
                "device_android_smartphone": 62.0,
                "device_android_tablet": 9.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "like_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "post_engagement_breakdown": {
                "age_18-24_gender_male": 8.0,
                "age_18-24_gender_female": 8.0,
                "age_25-34_gender_male": 14.0,
                "age_25-34_gender_female": 13.0,
                "age_35-44_gender_male": 5.0,
                "age_35-44_gender_female": 2.0,
                "age_45-54_gender_male": 5.0,
                "age_45-54_gender_female": 5.0,
                "age_55-64_gender_male": 6.0,
                "age_55-64_gender_female": 15.0,
                "age_65+_gender_male": 14.0,
                "age_65+_gender_female": 22.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 1.0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 1.0,
                "device_desktop": 5.0,
                "device_iphone": 33.0,
                "device_ipad": 8.0,
                "device_ipod": 0,
                "device_android_smartphone": 62.0,
                "device_android_tablet": 9.0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "comment_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "post_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "post_reaction_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 1.0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 1.0,
                "age_65+_gender_female": 1.0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 1.0,
                "device_ipad": 1.0,
                "device_ipod": 0,
                "device_android_smartphone": 1.0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "checkin_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "leadgen_other_breakdown": {
                "age_18-24_gender_male": 0,
                "age_18-24_gender_female": 0,
                "age_25-34_gender_male": 0,
                "age_25-34_gender_female": 0,
                "age_35-44_gender_male": 0,
                "age_35-44_gender_female": 0,
                "age_45-54_gender_male": 0,
                "age_45-54_gender_female": 0,
                "age_55-64_gender_male": 0,
                "age_55-64_gender_female": 0,
                "age_65+_gender_male": 0,
                "age_65+_gender_female": 0,
                "age_13-17_gender_male": 0,
                "age_13-17_gender_female": 0,
                "age_18-24_gender_unknown": 0,
                "age_25-34_gender_unknown": 0,
                "age_35-44_gender_unknown": 0,
                "age_45-54_gender_unknown": 0,
                "age_55-64_gender_unknown": 0,
                "age_65+_gender_unknown": 0,
                "age_13-17_gender_unknown": 0,
                "device_other": 0,
                "device_desktop": 0,
                "device_iphone": 0,
                "device_ipad": 0,
                "device_ipod": 0,
                "device_android_smartphone": 0,
                "device_android_tablet": 0,
                "age_Unknown_gender_male": 0,
                "age_Unknown_gender_female": 0,
                "age_Unknown_gender_unknown": 0
            },
            "leads": 19,
            "impressions": 581347,
            "call_to_action_clicks": 0,
            "clicks": 1744,
            "social_clicks": 0,
            "reach": 550040.0,
            "social_reach": 0,
            "social_impressions": 0,
            "website_clicks": 0,
            "inline_link_clicks": 1100.0,
            "link_click": 1100.0,
            "page_engagement": 1130.0,
            "like": 0,
            "post_engagement": 1130.0,
            "comment": 1.0,
            "post": 5.0,
            "post_reaction": 24.0,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 0,
            "frequency": 250.3866,
            "spend": 4546.13,
            "video_p100_watched_actions": 0,
            "offline_conversion_purchases": 7,
            "offline_conversion_purchases_value": 82,
            "cpc": 2.61,
            "cpm": 7.82,
            "ctr": 0.3,
            "cpsc": 3.57,
            "roas": 328,
            "average_daily_reach": 2217.9
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "impressions": 1403,
                "call_to_action_clicks": 5,
                "clicks": 16,
                "social_clicks": 10,
                "reach": 1403,
                "social_reach": 70,
                "social_impressions": 1403,
                "website_clicks": 8,
                "inline_link_clicks": 5,
                "link_click": 9,
                "page_engagement": 77,
                "like": 85,
                "post_engagement": 84,
                "comment": 8,
                "post": 9,
                "post_reaction": 65,
                "checkin": 8,
                "action_reaction": 9,
                "leadgen.other": 0,
                "frequency": 5,
                "spend": 25,
                "video_p100_watched_actions": 20,
                "video_avg_percent_watched_actions": 76,
                "offline_conversion_purchases": 7,
                "offline_conversion_purchases_value": 82,
                "leads": 18,
                "cpc": 1.56,
                "cpm": 17.82,
                "ctr": 1.14,
                "cpsc": 3.57,
                "roas": 328
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.qa.reachlocalservices.com/client_reports/facebook_campaign/TEST_1?end_date=2020-10-10&start_date=2020-10-10"
}

```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|Report details|

**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|Data for specified campaign|
|totals|Object|Data for Overall Totals|
|totals_per_interval|Object|Overall Totals Broken Down by Interval|

**Campaigns Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|global_master_campaign_id|String|No|Unique Identifier for Campaign|
|start_date|String|No|Campaign Start Date|
|end_date|String|Yes|Campaign End Date|
|type|String|No|Type of Campaign|
|status|String|No|Status of Campaign|
|goals|Array|No|Array of Goals|
|cycles|Cycle[]|No|Array of Cycle|
|intervals|Interval[]|No|Array of Interval|


**Goal Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|goal_type_id|Int|No|Goal Unique Identifier|
|goal_type|String|No|Goal Type Name|

**Cycles Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|campaign_cycle|String|No|Unique Identifier for Cycle|
|start_date|String|No|Cycle Start Date|
|end_date|String|Yes|Cycle End Date|
|intervals|Interval[]|No|Array of Interval|


**Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date for Interval|
|impressions|Int|No|Total Impressions for Interval|
|call_to_action_clicks|Int|No|Total Call to Action Clicks for Interval|
|clicks|Int|No|Total Clicks for Interval|
|social_clicks|Int|No|Total Social Clicks for Interval|
|reach|Int|No|Total Reach for Interval|
|social_reach|Int|No|Total Social Reach for Interval|
|social_impressions|Int|No|Total Social Impressions for Interval|
|website_clicks|Int|No|Total Website Clicks for Interval|
|inline_link_clicks|Int|No|Total Inline Link Clicks for Interval|
|link_click|Int|No|Total Link Clicks for Interval|
|page_engagement|Int|No|Total Page Engagement for Interval|
|like|Int|No|Total Likes for Interval|
|post_engagement|Int|No|Total Post Engagement for Interval|
|comment|Int|No|Total Comments for Interval|
|post|Int|No|Total Posts for Interval|
|post_reaction|Int|No|Total Post Reactions for Interval|
|checkin|Int|No|Total Checkins for Interval|
|action_reaction|Int|No|Total Action Reaction for Interval|
|leadgen.other|Int|No|Total leadgen.other for Interval|
|frequency|Int|No|Total Frequency for Interval|
|spend|Int|No|Total Spend for Interval|
|video_p100_watched_actions|Int|No|Total Videos Watched to 100 percent for Interval|
|offline_conversion_purchases|Int|No|Total Offline Conversion Purchases for Interval|
|offline_conversion_purchases_value|Int|No|Total Offline Conversion Purchase Value for Interval|
|cpc|Int|No|Total Cost per Click for Interval|
|cpm|Int|No|Total Cost per Milli for Interval|
|ctr|Int|No|Total Click Through Rate for Interval|
|cpsc|Int|No|Total CPSC for Interval|
|roas|Int|No|Total ROAS for Interval|

**Totals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|impressions|Int|No|Total Impressions|
|call_to_action_clicks|Int|No|Total Call to Action Clicks|
|clicks|Int|No|Total Clicks|
|social_clicks|Int|No|Total Social Clicks|
|reach|Int|No|Total Reach|
|social_reach|Int|No|Total|
|social_impressions|Int|No|Total Social Impressions|
|website_clicks|Int|No|Total Website Clicks|
|inline_link_clicks|Int|No|Total Inline Link Clicksl|
|link_click|Int|No|Total Link Clicks|
|page_engagement|Int|No|Total Page Engagement|
|like|Int|No|Total Likes|
|post_engagement|Int|No|Total Post Engagement|
|comment|Int|No|Total Comments|
|post|Int|No|Total Posts|
|post_reaction|Int|No|Total Post Reactions|
|checkin|Int|No|Total Checkins|
|action_reaction|Int|No|Total Action Reaction|
|leadgen.other|Int|No|Total leadgen.other|
|frequency|Int|No|Total Frequency|
|spend|Int|No|Total Spend|
|video_p100_watched_actions|Int|No|Total Videos Watched to 100 percent|
|offline_conversion_purchases|Int|No|Total Offline Conversion Purchases|
|offline_conversion_purchases_value|Int|No|Total Offline Conversion Purchase Value|
|cpc|Int|No|Total Cost per Click|
|cpm|Int|No|Total Cost per Milli|
|ctr|Int|No|Total Click Through Rate|
|cpsc|Int|No|Total CPSC|
|roas|Int|No|Total ROAS|
|reach_breakdown|Breakdown[]|No|Reach breakdowns|
|impressions_breakdown|Breakdown[]|No|Impressions breakdowns|
|clicks_breakdown|Breakdown[]|No|Clicks breakdowns|

**Breakdown Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|age_18-24_gender_male|Int|No|Breakdowns for Males Age 18-24|
|age_18-24_gender_female|Int|No|Breakdowns for Females Age 18-24|
|age_25-34_gender_male|Int|No|Breakdowns for Males Age 25-34|
|age_25-34_gender_female|Int|No|Breakdowns for Females Age 25-34|
|age_35-44_gender_male|Int|No|Breakdowns for Males Age 35-44|
|age_35-44_gender_female|Int|No|Breakdowns for Females Age 35-44|
|age_45-54_gender_male|Int|No|Breakdowns for Males Age 45-54|
|age_45-54_gender_female|Int|No|Breakdowns for Females Age 45-54|
|age_55-64_gender_male|Int|No|Breakdowns for Males Age 55-64|
|age_55-64_gender_female|Int|No|Breakdowns for Females Age 55-64|
|age_65+_gender_male|Int|No|Breakdowns for Males Age 65+|
|age_65+_gender_female|Int|No|Breakdowns for Females Age 65+|
|age_13-17_gender_male|Int|No|Breakdowns for Males Age 13-17|
|age_13-17_gender_female|Int|No|Breakdowns for Females Age 13-17|
|age_18-24_gender_unknown|Int|No|Breakdowns for Males Age 18-24|
|age_25-34_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 25-34|
|age_35-44_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 18-24|
|age_45-54_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 45-54|
|age_55-64_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 55-64|
|age_65+_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 65+|
|age_13-17_gender_unknown|Int|No|Breakdowns for Unknown Gender Age 13-17|
|device_other|Int|No|Breakdowns for Device Other|
|device_desktop|Int|No|Breakdowns for Device Desktop|
|device_iphone|Int|No|Breakdowns for Device iPhone|
|device_ipad|Int|No|Breakdowns for Device iPad|
|device_ipod|Int|No|Breakdowns for Device iPod|
|device_android_smartphone|Int|No|Breakdowns for Device Android Smartphone|
|device_android_tablet|Int|No|Breakdowns for Device Android Tablet|
|age_Unknown_gender_male|Int|No|Breakdowns for Males Age Unknown|
|age_Unknown_gender_female|Int|No|Breakdowns for Femails Age Unknown|
|age_Unknown_gender_unknown|Int|No|Breakdowns for Unknown Gender Age Unknown|


**Totals Per Interval Object**

This is an Interval object across all campaigns.
