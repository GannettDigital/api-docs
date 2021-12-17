## Business Display

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/business_display/[business_id]?[query_params]
```

#### Usage
Use GET to retrieve display activity for all advertisers for a given business.

The data returned includes the following metrics for each interval, broken out by advertiser and campaign or line items.
 * spend
 * impressions
 * clicks
 * ctr
 * cpm
 * cpc
 * walk ins
 * video views
 * completed views
 * video complete rate
 * view through rate
 * cost per view
 * cost per submission
 * form submissions ct
 * priority page views vt

Gannett display doesn't have ReachLocal campaigns, so they have line items instead and an abbreviated collection of metrics.

The business_id needs to include the region so that it is globally unique (USA_6338 or CAN_6338, not 6338)

If the timeframe between start date and end date is more than 13 months and interval is calendar_month or more than 120 days and interval is days, an error is returned

```
More than 120 days of data for daily interval or more than 13 months of data is not supported
```

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those ocurring on or after this date.|
|`end_date`|Yes|Restricts the results to those ocurring on or before this date.|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_display/USA_105569?start_date=2019-01-01&end_date=2019-03-01"
```
###### Retrieve data for a specific range of dates limitted to ended and stopped campaigns
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_display/USA_105569?start_date=2019-01-01&end_date=2019-03-01&campaign_status[]=ended,stopped"
```

###### Retrieve data for a specific range of dates grouped by calendar month
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_display/USA_105569?start_date=2019-01-01&end_date=2019-03-01&interval_size=calendar_month"
```

#### Response Description with Campaigns
```javascript
{
    "api_name": "business_display",
    "api_run_date": "2019-09-25",
    "start_date": "2019-05-05",
    "end_date": "2019-05-08",
    "business_id": "USA_14702",
    "business_name": "Paul Kowalczyk",
    "interval_size": "day",
    "report_data": {
        "advertisers": [
            {
                "global_master_advertiser_id": "USA_250010",
                "name": "Mazzone Paint Center",
                "aid": 250010,
                "campaigns": [
                    {
                        "name": "Targeted Display | Mazzone Paint Center | Paint Sales",
                        "global_master_campaign_id": "USA_2758069",
                        "organization": "reachlocal",
                        "offer_id": 2021,
                        "start_date": "2019-05-03",
                        "end_date": null,
                        "type": "display",
                        "currency": "USD",
                        "status": "running",
                        "intervals": [
                            {
                                "start_date": "2019-05-05",
                                "spend": 16.33,
                                "impressions": 3013.0,
                                "clicks": 3.0,
                                "ctr": 0.1,
                                "cpm": 5.42,
                                "cpc": 5.44,
                                "walk_ins": 0.0,
                                "video_views": 0.0,
                                "completed_views": 0.0,
                                "video_complete_rate": 0.0,
                                "view_thru_rate": 0.0,
                                "cost_per_view": 0,
                                "form_submissions_ct": 0.0,
                                "form_submissions_vt": 0.0,
                                "website_visits_vt": 0.0,
                                "cost_per_submission": 0,
                                "priority_page_views_ct": 0.0,
                                "priority_page_views_vt": 0.0
                            },
                            {
                                "start_date": "2019-05-06",
                                "spend": 16.34,
                                "impressions": 3004.0,
                                "clicks": 2.0,
                                "ctr": 0.07,
                                "cpm": 5.44,
                                "cpc": 8.17,
                                "walk_ins": 0.0,
                                "video_views": 0.0,
                                "completed_views": 0.0,
                                "video_complete_rate": 0.0,
                                "view_thru_rate": 0.0,
                                "cost_per_view": 0,
                                "form_submissions_ct": 0.0,
                                "form_submissions_vt": 0.0,
                                "website_visits_vt": 0.0,
                                "cost_per_submission": 0,
                                "priority_page_views_ct": 0.0,
                                "priority_page_views_vt": 0.0
                            },
                            {
                                "start_date": "2019-05-07",
                                "spend": 16.34,
                                "impressions": 3087.0,
                                "clicks": 1.0,
                                "ctr": 0.03,
                                "cpm": 5.29,
                                "cpc": 16.34,
                                "walk_ins": 0.0,
                                "video_views": 0.0,
                                "completed_views": 0.0,
                                "video_complete_rate": 0.0,
                                "view_thru_rate": 0.0,
                                "cost_per_view": 0,
                                "form_submissions_ct": 0.0,
                                "form_submissions_vt": 0.0,
                                "website_visits_vt": 0.0,
                                "cost_per_submission": 0,
                                "priority_page_views_ct": 0.0,
                                "priority_page_views_vt": 0.0
                            },
                            {
                                "start_date": "2019-05-08",
                                "spend": 16.46,
                                "impressions": 3096.0,
                                "clicks": 4.0,
                                "ctr": 0.13,
                                "cpm": 5.32,
                                "cpc": 4.11,
                                "walk_ins": 0.0,
                                "video_views": 0.0,
                                "completed_views": 0.0,
                                "video_complete_rate": 0.0,
                                "view_thru_rate": 0.0,
                                "cost_per_view": 0,
                                "form_submissions_ct": 0.0,
                                "form_submissions_vt": 0.0,
                                "website_visits_vt": 0.0,
                                "cost_per_submission": 0,
                                "priority_page_views_ct": 0.0,
                                "priority_page_views_vt": 0.0
                            }
                        ]
                    }
                ],
                "line_items": []
            }
        ]
    }
}
```

#### Response Description with line items
```javascript
{
    "api_name": "business_display",
    "api_run_date": "2019-09-25",
    "start_date": "2019-05-17",
    "end_date": "2019-05-20",
    "business_id": "USA_16332",
    "business_name": "Asbury Park Press_1",
    "interval_size": "day",
    "report_data": {
        "advertisers": [
            {
                "global_master_advertiser_id": "USA_197467",
                "name": "Reformed Church Home",
                "aid": 197467,
                "campaigns": [],
                "line_items": [
                    {
                        "name": "C1171_USE0004690_Reformed Church Home_Reformed Church Home -Site Retargeting",
                        "line_item_id": 655112,
                        "intervals": [
                            {
                                "start_date": "2019-05-17",
                                "impressions": 2894,
                                "clicks": 6,
                                "ctr": 0.21,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-18",
                                "impressions": 2891,
                                "clicks": 3,
                                "ctr": 0.1,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-19",
                                "impressions": 2939,
                                "clicks": 7,
                                "ctr": 0.24,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-20",
                                "impressions": 2868,
                                "clicks": 4,
                                "ctr": 0.14,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_242250",
                "name": "Diane Turton Corporate",
                "aid": 242250,
                "campaigns": [],
                "line_items": [
                    {
                        "name": "C1171_GCI0151128_Diane Turton-Corporate_Diane Turton-SITE RETARGETING",
                        "line_item_id": 662024,
                        "intervals": [
                            {
                                "start_date": "2019-05-17",
                                "impressions": 3871,
                                "clicks": 1,
                                "ctr": 0.03,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-18",
                                "impressions": 3890,
                                "clicks": 6,
                                "ctr": 0.15,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-19",
                                "impressions": 3888,
                                "clicks": 5,
                                "ctr": 0.13,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            },
                            {
                                "start_date": "2019-05-20",
                                "impressions": 3898,
                                "clicks": 3,
                                "ctr": 0.08,
                                "universal_interaction_rate": 0.0,
                                "universal_interaction_time": 0.0,
                                "hover_rate": 0.0,
                                "attention_quality": 0.0
                            }
                        ]
                    }
                ]
            }
        ]
    }
}
```