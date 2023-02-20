## Google Analytics (Google Analytics 4 Report)

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_analytics_data/[gmaid]?[query_params]

#### API Name: google_analytics_data
### Usage
Use GET to retrieve information from the Google Analytics API. Data will be returned for a GMAID by a specific date range determined by start date and end date. Can be filtered by medium dimension. Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`gmaid`|Yes|Restrict results to the specified Global Master Advertiser ID|
|`medium`|No|Restricts results using a regex match on the Medium dimension.  Some possible mediums include: “organic” (unpaid search), “cpc” (cost per click, i.e. paid search), “referral” (referral), “none” (direct traffic has a medium of “none”).|
|`page_path`|No|Restricts results using an inclusive regex match of entire page_path. Ex. `page_path=newark` returns results for `/newark*`, `about/newark*`, `blog/2022-01-03/ice-skating-in-newark*` etc.|
|`sort_by`|No|Applies only to Search Console data. Use "clicks", "impressions", "postion", or "ctr". Returns top 20 results. Default: "clicks"|
|`page_size`|No|Applies ONLY to responses of reports `pages_by_pageview` and `top_landing_pages`. Default: 10|
|`second_start_date`|No|Applies ONLY to responses of reports ` website_traffic` `pages_by_pageview`, and  `channel_performance`.|
|`second_end_date`|No|Requires use of `second_start_date`. Will return `second_data_set` object or array. Applies ONLY to responses of reports ` website_traffic` `pages_by_pageview`, and  `channel_performance`.|


Note: All filters use AND logic to match results.

### Metrics

#### Website Traffic Metrics

These are overall metrics that do not have any dimensions associated with them. <br>
Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews`|The total number of pageviews for the property.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|
|`total_users`|The total number of users for the requested time period.|
|`sessions`|The total number of sessions.|
|`engaged_sessions`|The total number of engaged sessions for the requested time period.|
|`engagement_rate`|The number of engaged sessions divided by the total number of sessions over a specified time period displayed as a percentage.|
|`event_count`|The count of events.|
|`active_users`|The number of distinct users who visited the site.|
#### Sessions by Device

Dimension: The type of device: desktop, tablet, or mobile.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|

#### Traffic by City

Dimension: Users' city, derived from their IP addresses or Geographical IDs.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`total_users`|The number of sessions marked as sessions for all users.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|
|`engaged_sessions`|The total number of engaged sessions for the requested time period.|
|`engagement_rate`|The number of engaged sessions divided by the total number of sessions over a specified time period displayed as a percentage.|
|`page_views`|The total number of Page Views for the requested time period.|

#### Sessions by Day

Dimension: NthDay, starting with the `start_date` of the report. Format: `YYYY-MM-DD`
Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|
|`engaged_sessions`|The total number of engaged sessions for the requested time period.|

#### Sessions by Month

Dimension: Year/Month, beginning 24 months prior to the requested start_date parameter.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|

### Examples

```
curl --location --request GET 'https://data-connect-staging.gannettdigital.com/client_reports/google_analytics_data/TEST_1?start_date=2021-03-04&end_date=2021-03-04&page_size=1&second_start_date=2021-03-05&second_end_date=2021-03-05' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

# Example Response
```javascript
{
    "report_type": "google_analytics_data",
    "report_date": "2023-02-20",
    "start_date": "2022-05-02",
    "end_date": "2022-05-03",
    "global_master_advertiser_id": "TEST_1",
    "account_id": null,
    "account_name": null,
    "web_property_id": null,
    "web_property_name": null,
    "report_data": {
        "reports": [
            {
                "type": "website_traffic",
                "data": [
                    {
                        "new_users": "87",
                        "bounce_rate": "0.39805825242718446",
                        "average_session_duration": "139.84439327184464",
                        "engaged_sessions": "62",
                        "engagement_rate": "0.60194174757281549",
                        "event_count": "484",
                        "active_users": "95",
                        "screenpageviews": "160",
                        "screenpageviews_per_session": "1.5533980582524272",
                        "total_users": "95",
                        "sessions": "103"
                    }
                ],
                "second_data_set": [
                    {
                        "new_users": "72",
                        "bounce_rate": "0.55555555555555558",
                        "average_session_duration": "109.25294651111109",
                        "engaged_sessions": "40",
                        "engagement_rate": "0.44444444444444442",
                        "event_count": "408",
                        "active_users": "78",
                        "screenpageviews": "142",
                        "screenpageviews_per_session": "1.5777777777777777",
                        "total_users": "78",
                        "sessions": "90"
                    }
                ]
            },
            {
                "type": "sessions_by_device",
                "data": [
                    {
                        "dimension": "mobile",
                        "sessions": "53"
                    },
                    {
                        "dimension": "desktop",
                        "sessions": "46"
                    },
                    {
                        "dimension": "tablet",
                        "sessions": "6"
                    }
                ]
            },
            {
                "type": "traffic_by_city",
                "data": [
                    {
                        "dimension": "Los Angeles",
                        "new_users": "47",
                        "total_users": "55",
                        "sessions": "62",
                        "bounce_rate": "0.35483870967741937",
                        "average_session_duration": "134.87618256451611",
                        "screenpageviews_per_session": "1.6129032258064515",
                        "engaged_sessions": "40",
                        "engagement_rate": "0.64516129032258063",
                        "screen_page_views": "100"
                    },
                    {
                        "dimension": "(not set)",
                        "new_users": "6",
                        "total_users": "6",
                        "sessions": "6",
                        "bounce_rate": "0.66666666666666663",
                        "average_session_duration": "48.999008",
                        "screenpageviews_per_session": "1.3333333333333333",
                        "engaged_sessions": "2",
                        "engagement_rate": "0.33333333333333331",
                        "screen_page_views": "8"
                    },
                    {
                        "dimension": "San Francisco",
                        "new_users": "4",
                        "total_users": "4",
                        "sessions": "4",
                        "bounce_rate": "0.75",
                        "average_session_duration": "33.87304925",
                        "screenpageviews_per_session": "1.25",
                        "engaged_sessions": "1",
                        "engagement_rate": "0.25",
                        "screen_page_views": "5"
                    },
                    {
                        "dimension": "Columbus",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1",
                        "engaged_sessions": "0",
                        "engagement_rate": "0",
                        "screen_page_views": "3"
                    },
                    {
                        "dimension": "Glendale",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "0.66666666666666663",
                        "average_session_duration": "15.985063000000002",
                        "screenpageviews_per_session": "1",
                        "engaged_sessions": "1",
                        "engagement_rate": "0.33333333333333331",
                        "screen_page_views": "3"
                    },
                    {
                        "dimension": "Santa Clarita",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "0",
                        "average_session_duration": "177.781235",
                        "screenpageviews_per_session": "2",
                        "engaged_sessions": "3",
                        "engagement_rate": "1",
                        "screen_page_views": "6"
                    }
                ]
            },
            {
                "type": "sessions_by_day",
                "data": [
                    {
                        "dimension": "2022-05-02",
                        "sessions": "55",
                        "engaged_sessions": "32"
                    },
                    {
                        "dimension": "2022-05-03",
                        "sessions": "48",
                        "engaged_sessions": "30"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "2022-05-04",
                        "sessions": "48",
                        "engaged_sessions": "24"
                    },
                    {
                        "dimension": "2022-05-05",
                        "sessions": "42",
                        "engaged_sessions": "16"
                    }
                ]
            },
            {
                "type": "sessions_by_month",
                "data": [
                    {
                        "dimension": "202204",
                        "sessions": "1309"
                    },
                    {
                        "dimension": "202205",
                        "sessions": "138"
                    }
                ]
            }
        ]
    }
}
```
