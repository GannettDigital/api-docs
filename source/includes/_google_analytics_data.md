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

#### Sessions by Day

Dimension: NthDay, starting with the `start_date` of the report. Format: `YYYY-MM-DD`
Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|

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
    "report_date": "2022-06-07",
    "start_date": "2022-05-28",
    "end_date": "2022-05-30",
    "global_master_advertiser_id": "TEST_1",
    "account_id": null,
    "account_name": null,
    "web_property_id": null,
    "web_property_name": null,
    "report_data": {
        [
            {
                "type": "website_traffic",
                "data": [
                    {
                        "new_users": "76",
                        "bounce_rate": "0.51086956521739135",
                        "average_session_duration": "105.04572230434783",
                        "screenpageviews": "143",
                        "screenpageviews_per_session": "1.5543478260869565",
                        "total_users": "81",
                        "sessions": "92"
                    }
                ],
                "second_data_set": [
                    {
                        "new_users": "110",
                        "bounce_rate": "0.35658914728682173",
                        "average_session_duration": "127.86980190697675",
                        "screenpageviews": "216",
                        "screenpageviews_per_session": "1.6744186046511629",
                        "total_users": "117",
                        "sessions": "129"
                    }
                ]
            },
            {
                "type": "sessions_by_device",
                "data": [
                    {
                        "dimension": "mobile",
                        "sessions": "80"
                    },
                    {
                        "dimension": "desktop",
                        "sessions": "48"
                    },
                    {
                        "dimension": "tablet",
                        "sessions": "1"
                    }
                ]
            },
            {
                "type": "traffic_by_city",
                "data": [
                    {
                        "dimension": "Los Angeles",
                        "new_users": "56",
                        "total_users": "61",
                        "sessions": "72",
                        "bounce_rate": "0.4861111111111111",
                        "average_session_duration": "101.68330751388891",
                        "screenpageviews_per_session": "1.625"
                    },
                    {
                        "dimension": "(not set)",
                        "new_users": "6",
                        "total_users": "6",
                        "sessions": "6",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Santa Clarita",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "0.66666666666666663",
                        "average_session_duration": "18.022299333333333",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Camarillo",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "191.6186",
                        "screenpageviews_per_session": "2"
                    },
                    {
                        "dimension": "Castaic",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "3.288961",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Danbury",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "180.643275",
                        "screenpageviews_per_session": "3"
                    },
                    {
                        "dimension": "Fitchburg",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "56.353816",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Fort Worth",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Glendale",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "152.069558",
                        "screenpageviews_per_session": "2"
                    },
                    {
                        "dimension": "Lancaster",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "463.831674",
                        "screenpageviews_per_session": "3"
                    },
                    {
                        "dimension": "Moorpark",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "23.493197",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "San Jose",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "San Marino",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "1217.642332",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Thousand Oaks",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    }
                ]
            },
            {
                "type": "sessions_by_day",
                "data": [
                    {
                        "dimension": "2022-05-30",
                        "sessions": "41"
                    },
                    {
                        "dimension": "2022-05-29",
                        "sessions": "27"
                    },
                    {
                        "dimension": "2022-05-28",
                        "sessions": "24"
                    }
                ]
            },
            {
                "type": "sessions_by_month",
                "data": [
                    {
                        "dimension": "202201",
                        "sessions": "1328"
                    },
                    {
                        "dimension": "202112",
                        "sessions": "1309"
                    }
                ]
            }
        ]
    }
}
```
