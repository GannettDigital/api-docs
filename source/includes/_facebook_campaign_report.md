## Facebook Campaign Report

### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/facebook_campaign/[gmaid]?[query_params]
```

### Usage
Use GET to retrieve information for the Facebook Campaign Report for a given advertiser.

The data returned will include values for spend, reach, impressions, clicks, button clicks, link clicks and inline link clicks, organized by campaign and campaign\_cycle.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`|Restrict results to a single campaign cycle|
|`interval_size`|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`|Set to true or false on whether to include cycle nesting.  Default value is false.|

To specify a date range:
   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_105569?campaign_cycle=USA_100
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_105569?&campaign_status[]=running&campaign_status[]=stopped&start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_105569?global_master_campaign_id[]=USA_14&start_date=2016-12-01&end_date=2016-12-31&include_cycles=true
```

> Example Response:

```
curl -g -H "Authorization: OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_125992?start_date=2017-01-26&end_date=2017-01-30
```

```javascript
{
  "report_type": "facebook_campaign",
  "report_date": "2017-08-14",
  "earliest_date_available": "2017-01-03",      // How far back data is available
  "start_date": "2017-01-26",
  "end_date": "2017-01-30",
  "time_zone": "America/Los_Angeles",           // Time Zone
  "interval_size": "day",                       // Interval Size ('day', 'calendar_week' or 'calendar_month')
  "currency": "USD",
  "report_data": {
    "campaigns": [
      {
        "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale",
        "global_master_campaign_id": "USA_2144914",
        "start_date": "2016-11-04",
        "end_date": "2017-03-08",
        "type": "other",
        "status": "ended",
        "intervals": [
          {
            "start_date": "2017-01-26",         // interval start date
            "impressions": 383,                 // metrics for this interval
            "call_to_action_clicks": 0,
            "clicks": 4,
            "social_clicks": 0,
            "reach": 368,
            "social_reach": 22,
            "social_impressions": 22,
            "website_clicks": 4,
            "inline_link_clicks": 2,
            "link_click": 2,
            "page_engagement": 2,
            "like": 0,
            "post_engagement": 2,
            "comment": 0,
            "post": 0,
            "post_reaction": 0,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 0,
            "frequency": 1.04076,
            "spend": 27.1,
            "video_avg_percent_watched_actions": 0,
            "video_p100_watched_actions": 0,
            "cpc": 6.78,
            "cpm": 70.76,
            "ctr": 1.04
          },
          {
            "start_date": "2017-01-27",
            "impressions": 443,
            "call_to_action_clicks": 0,
            "clicks": 13,
            "social_clicks": 0,
            "reach": 431,
            "social_reach": 29,
            "social_impressions": 31,
            "website_clicks": 13,
            "inline_link_clicks": 3,
            "link_click": 3,
            "page_engagement": 6,
            "like": 0,
            "post_engagement": 6,
            "comment": 1,
            "post": 0,
            "post_reaction": 2,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 2,
            "frequency": 1.02784,
            "spend": 25.9,
            "video_avg_percent_watched_actions": 0,
            "video_p100_watched_actions": 0,
            "cpc": 1.99,
            "cpm": 58.47,
            "ctr": 2.93
          },
          {
            "start_date": "2017-01-28",
            "impressions": 428,
            "call_to_action_clicks": 0,
            "clicks": 6,
            "social_clicks": 2,
            "reach": 417,
            "social_reach": 33,
            "social_impressions": 33,
            "website_clicks": 6,
            "inline_link_clicks": 3,
            "link_click": 3,
            "page_engagement": 4,
            "like": 1,
            "post_engagement": 3,
            "comment": 0,
            "post": 0,
            "post_reaction": 0,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 0,
            "frequency": 1.02638,
            "spend": 25.76,
            "video_avg_percent_watched_actions": 0,
            "video_p100_watched_actions": 0,
            "cpc": 4.29,
            "cpm": 60.19,
            "ctr": 1.4
          },
          {
            "start_date": "2017-01-29",
            "impressions": 437,
            "call_to_action_clicks": 0,
            "clicks": 8,
            "social_clicks": 2,
            "reach": 418,
            "social_reach": 39,
            "social_impressions": 41,
            "website_clicks": 8,
            "inline_link_clicks": 3,
            "link_click": 3,
            "page_engagement": 5,
            "like": 1,
            "post_engagement": 4,
            "comment": 0,
            "post": 0,
            "post_reaction": 1,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 1,
            "frequency": 1.04546,
            "spend": 25.86,
            "video_avg_percent_watched_actions": 0,
            "video_p100_watched_actions": 0,
            "cpc": 3.23,
            "cpm": 59.18,
            "ctr": 1.83
          },
          {
            "start_date": "2017-01-30",
            "impressions": 419,
            "call_to_action_clicks": 0,
            "clicks": 7,
            "social_clicks": 0,
            "reach": 400,
            "social_reach": 23,
            "social_impressions": 25,
            "website_clicks": 7,
            "inline_link_clicks": 1,
            "link_click": 1,
            "page_engagement": 1,
            "like": 0,
            "post_engagement": 1,
            "comment": 0,
            "post": 0,
            "post_reaction": 0,
            "checkin": 0,
            "action_reaction": 0,
            "leadgen.other": 0,
            "frequency": 1.0475,
            "spend": 26.4,
            "video_avg_percent_watched_actions": 0,
            "video_p100_watched_actions": 0,
            "cpc": 3.77,
            "cpm": 63.01,
            "ctr": 1.67
          }
        ]
      }
    ],
    "totals": {                             //totals across all intervals
      "reach_breakdown": {                  // reach broken down by gender, age, device, etc
        "none": 2034,
        "age_18-24_gender_male": 58,
        "age_18-24_gender_female": 62,
        "age_25-34_gender_male": 213,
        "age_25-34_gender_female": 237,
        "age_35-44_gender_male": 172,
        "age_35-44_gender_female": 247,
        "age_45-54_gender_male": 183,
        "age_45-54_gender_female": 266,
        "age_55-64_gender_male": 173,
        "age_55-64_gender_female": 197,
        "age_65+_gender_male": 79,
        "age_65+_gender_female": 134,
        "age_13-17_gender_male": 0,
        "age_13-17_gender_female": 0,
        "age_18-24_gender_unknown": 0,
        "age_25-34_gender_unknown": 0,
        "age_35-44_gender_unknown": 3,
        "age_45-54_gender_unknown": 8,
        "age_55-64_gender_unknown": 2,
        "age_65+_gender_unknown": 0,
        "age_13-17_gender_unknown": 0,
        "device_other": 2,
        "device_desktop": 82,
        "device_iphone": 830,
        "device_ipad": 4,
        "device_ipod": 0,
        "device_android_smartphone": 1078,
        "device_android_tablet": 38,
        "age_Unknown_gender_male": 0,
        "age_Unknown_gender_female": 0,
        "age_Unknown_gender_unknown": 0
      },
      "impressions_breakdown": {            // impressions broken down by gender, age, device, etc
        "none": 2110,
        "age_18-24_gender_male": 59,
        "age_18-24_gender_female": 66,
        "age_25-34_gender_male": 220,
        "age_25-34_gender_female": 244,
        "age_35-44_gender_male": 177,
        "age_35-44_gender_female": 256,
        "age_45-54_gender_male": 192,
        "age_45-54_gender_female": 279,
        "age_55-64_gender_male": 179,
        "age_55-64_gender_female": 203,
        "age_65+_gender_male": 81,
        "age_65+_gender_female": 139,
        "age_13-17_gender_male": 0,
        "age_13-17_gender_female": 0,
        "age_18-24_gender_unknown": 0,
        "age_25-34_gender_unknown": 0,
        "age_35-44_gender_unknown": 3,
        "age_45-54_gender_unknown": 9,
        "age_55-64_gender_unknown": 3,
        "age_65+_gender_unknown": 0,
        "age_13-17_gender_unknown": 0,
        "device_other": 2,
        "device_desktop": 83,
        "device_iphone": 858,
        "device_ipad": 5,
        "device_ipod": 0,
        "device_android_smartphone": 1124,
        "device_android_tablet": 38,
        "age_Unknown_gender_male": 0,
        "age_Unknown_gender_female": 0,
        "age_Unknown_gender_unknown": 0
      },
      "clicks_breakdown": {                     // clicks broken down by gender, age, device, etc
        "none": 38,
        "age_18-24_gender_male": 2,
        "age_18-24_gender_female": 1,
        "age_25-34_gender_male": 1,
        "age_25-34_gender_female": 4,
        "age_35-44_gender_male": 1,
        "age_35-44_gender_female": 4,
        "age_45-54_gender_male": 3,
        "age_45-54_gender_female": 5,
        "age_55-64_gender_male": 2,
        "age_55-64_gender_female": 4,
        "age_65+_gender_male": 4,
        "age_65+_gender_female": 7,
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
        "device_iphone": 12,
        "device_ipad": 0,
        "device_ipod": 0,
        "device_android_smartphone": 26,
        "device_android_tablet": 0,
        "age_Unknown_gender_male": 0,
        "age_Unknown_gender_female": 0,
        "age_Unknown_gender_unknown": 0
      },
      "impressions": 2110,                      // individual metric totals across all campaigns and intervals
      "call_to_action_clicks": 0,
      "clicks": 38,
      "social_clicks": 4,
      "reach": 2034,
      "social_reach": 146,
      "social_impressions": 152,
      "website_clicks": 38,
      "inline_link_clicks": 12,
      "link_click": 12,
      "page_engagement": 18,
      "like": 2,
      "post_engagement": 16,
      "comment": 1,
      "post": 0,
      "post_reaction": 3,
      "checkin": 0,
      "action_reaction": 0,
      "leadgen.other": 3,
      "frequency": 5.18794,
      "spend": 131.02,
      "video_p100_watched_actions": 0,
      "cpc": 3.45,
      "cpm": 62.09,
      "ctr": 1.8
    },
    "totals_per_interval": [                // per-metric totals for interval across all campaigns
      {
        "start_date": "2017-01-26",
        "impressions": 383,
        "call_to_action_clicks": 0,
        "clicks": 4,
        "social_clicks": 0,
        "reach": 368,
        "social_reach": 22,
        "social_impressions": 22,
        "website_clicks": 4,
        "inline_link_clicks": 2,
        "link_click": 2,
        "page_engagement": 2,
        "like": 0,
        "post_engagement": 2,
        "comment": 0,
        "post": 0,
        "post_reaction": 0,
        "checkin": 0,
        "action_reaction": 0,
        "leadgen.other": 0,
        "frequency": 1.04076,
        "spend": 27.1,
        "video_avg_percent_watched_actions": 0,
        "video_p100_watched_actions": 0,
        "cpc": 6.78,
        "cpm": 70.76,
        "ctr": 1.04
      },
      {
        "start_date": "2017-01-27",
        "impressions": 443,
        "call_to_action_clicks": 0,
        "clicks": 13,
        "social_clicks": 0,
        "reach": 431,
        "social_reach": 29,
        "social_impressions": 31,
        "website_clicks": 13,
        "inline_link_clicks": 3,
        "link_click": 3,
        "page_engagement": 6,
        "like": 0,
        "post_engagement": 6,
        "comment": 1,
        "post": 0,
        "post_reaction": 2,
        "checkin": 0,
        "action_reaction": 0,
        "leadgen.other": 2,
        "frequency": 1.02784,
        "spend": 25.9,
        "video_avg_percent_watched_actions": 0,
        "video_p100_watched_actions": 0,
        "cpc": 1.99,
        "cpm": 58.47,
        "ctr": 2.93
      },
      {
        "start_date": "2017-01-28",
        "impressions": 428,
        "call_to_action_clicks": 0,
        "clicks": 6,
        "social_clicks": 2,
        "reach": 417,
        "social_reach": 33,
        "social_impressions": 33,
        "website_clicks": 6,
        "inline_link_clicks": 3,
        "link_click": 3,
        "page_engagement": 4,
        "like": 1,
        "post_engagement": 3,
        "comment": 0,
        "post": 0,
        "post_reaction": 0,
        "checkin": 0,
        "action_reaction": 0,
        "leadgen.other": 0,
        "frequency": 1.02638,
        "spend": 25.76,
        "video_avg_percent_watched_actions": 0,
        "video_p100_watched_actions": 0,
        "cpc": 4.29,
        "cpm": 60.19,
        "ctr": 1.4
      },
      {
        "start_date": "2017-01-29",
        "impressions": 437,
        "call_to_action_clicks": 0,
        "clicks": 8,
        "social_clicks": 2,
        "reach": 418,
        "social_reach": 39,
        "social_impressions": 41,
        "website_clicks": 8,
        "inline_link_clicks": 3,
        "link_click": 3,
        "page_engagement": 5,
        "like": 1,
        "post_engagement": 4,
        "comment": 0,
        "post": 0,
        "post_reaction": 1,
        "checkin": 0,
        "action_reaction": 0,
        "leadgen.other": 1,
        "frequency": 1.04546,
        "spend": 25.86,
        "video_avg_percent_watched_actions": 0,
        "video_p100_watched_actions": 0,
        "cpc": 3.23,
        "cpm": 59.18,
        "ctr": 1.83
      },
      {
        "start_date": "2017-01-30",
        "impressions": 419,
        "call_to_action_clicks": 0,
        "clicks": 7,
        "social_clicks": 0,
        "reach": 400,
        "social_reach": 23,
        "social_impressions": 25,
        "website_clicks": 7,
        "inline_link_clicks": 1,
        "link_click": 1,
        "page_engagement": 1,
        "like": 0,
        "post_engagement": 1,
        "comment": 0,
        "post": 0,
        "post_reaction": 0,
        "checkin": 0,
        "action_reaction": 0,
        "leadgen.other": 0,
        "frequency": 1.0475,
        "spend": 26.4,
        "video_avg_percent_watched_actions": 0,
        "video_p100_watched_actions": 0,
        "cpc": 3.77,
        "cpm": 63.01,
        "ctr": 1.67
      }
    ]
  },
  "global_master_advertiser_id": "USA_125992",
  "location": "https://api.reachlocalservices.com/api/client_reports/facebook_campaign/USA_125992?start_date=2017-01-26&end_date=2017-01-30",
  "available_campaigns": [
    {
      "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale",
      "global_master_campaign_id": "USA_2144914",
      "status": "ended",
      "cycles": [
        {
          "campaign_cycle": "USA_2144914",
          "start_date": "2016-11-04",
          "end_date": "2016-12-05",
          "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale"
        },
        {
          "campaign_cycle": "USA_2168697",
          "start_date": "2016-12-05",
          "end_date": "2017-01-05",
          "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale"
        },
        {
          "campaign_cycle": "USA_2185247",
          "start_date": "2017-01-05",
          "end_date": "2017-02-05",
          "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale"
        },
        {
          "campaign_cycle": "USA_2202247",
          "start_date": "2017-02-06",
          "end_date": "2017-03-08",
          "name": "FB Leads | Pleasant Hill Coin | Holiday Jewelry Sale"
        }
      ]
    }
  ]
}


```