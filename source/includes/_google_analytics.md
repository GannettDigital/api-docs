## Google Analytics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_analytics/[gmaid]?[query_params]

#### API Name: marketplace_metrics
### Usage
Use GET to retrieve information from the Google Analytics API. Data will be returned for a GMAID by a specific date range determined by start date and end date. Can be filtered by medium dimension. Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`gmaid`|Yes|Restrict results to the specified Global Master Advertiser ID|
|`medium`|No|Restricts results using a regex match on the Medium dimension|

### Metrics

#### Website Traffic Metrics

These are overall metrics that do not have any dimensions associated with them.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`goal_completions_all`|Total number of completions for all goals defined in the profile.|
|`goal_conversion_rate_all`|The percentage of sessions which resulted in a conversion to at least one of the goals.|
|`pageviews`|The total number of pageviews for the property.|
|`pageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|
|`avg_time_on_page`|The average time users spent viewing this page or a set of pages.|
|`avg_page_load_time`|The average time (in seconds) pages from the sample set take to load, from initiation of the pageview (e.g., a click on a page link) to load completion in the browser.|
|`users`|The total number of users for the requested time period.|
|`sessions`|The total number of sessions.|

#### Sessions by Device

Dimension: The type of device: desktop, tablet, or mobile.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|

#### User Type

Dimension: A boolean, either New Visitor or Returning Visitor, indicating if the users are new or returning.

| Metric | Description |
|---|---|
|`users`|The total number of users for the requested time period.|

#### Channel Performance

Dimension: Channel Grouping, such as Organic, Paid Search, Direct, etc.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`pageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

#### Pages by Page View

Dimension: Page Path, the url of each page that was viewed

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`entrances`|The number of entrances to the property measured as the first pageview in a session, typically used with landingPagePath.|
|`pageviews`|The total number of pageviews for the property.|
|`unique_page_views`|The number of sessions during which the specified page was viewed at least once. A unique pageview is counted for each page URL + page title combination.|
|`avg_time_on_page`|The average time users spent viewing this page or a set of pages.|
|`exit_rate`|The percentage of exits from the property that occurred out of the total pageviews.|

#### Top Landing Pages

Dimension: Page Path, the url of each page that was viewed

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`pageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

#### Top Source Medium

Dimension: source/medium, where:

Source: The source of referrals. For manual campaign tracking, it is the value of the utm_source campaign tracking parameter. For AdWords autotagging, it is google. If you use neither, it is the domain of the source (e.g., document.referrer) referring the users. It may also contain a port address. If users arrived without a referrer, its value is (direct).

Medium: The type of referrals. For manual campaign tracking, it is the value of the utm_medium campaign tracking parameter. For AdWords autotagging, it is cpc. If users came from a search engine detected by Google Analytics, it is organic. If the referrer is not a search engine, it is referral. If users came directly to the property and document.referrer is empty, its value is (none).

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`pageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

#### Traffic by City

Dimension: Users' city, derived from their IP addresses or Geographical IDs.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`percent_new_sessions`|The percentage of sessions by users who had never visited the property before.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`pageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

#### Sessions by Month

Dimension: Year/Month, starting with the beginning of the year prior to report end_date year, and going through the last available month of the end_date year.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|

### Examples

```
curl --location --request GET 'https://api-stage.gcion.com/apgb2b-reporting/client_reports/google_analytics/USA_123456?start_date=2020-01-01&end_date=2020-01-03' \
--header 'Authorization: token 1b01Secret'
```

# Example Response
```javascript
{
    "report_type": "google_analytics",
    "report_date": "2020-04-03",
    "start_date": "2020-01-01",
    "end_date": "2020-01-03",
    "global_master_advertiser_id": "USA_130964",
    "view_id": "123954488",
    "view_name": "BuenaVista",
    "account_id": "79363368",
    "account_name": "MyAccount",
    "web_property_id": "UA-79363368-1",
    "web_property_name": "MyWebSite",
    "report_data": {
        "reports": [
            {
                "type": "website_traffic",
                "data": {
                    "new_users": "24",
                    "percent_new_sessions": "96.0",
                    "bounce_rate": "56.00000000000001",
                    "avg_session_duration": "27.6",
                    "goal_completions_all": "0",
                    "goal_conversion_rate_all": "0.0",
                    "pageviews": "52",
                    "pageviews_per_session": "2.08",
                    "avg_time_on_page": "25.51851851851852",
                    "avg_page_load_time": "5.209",
                    "users": "24",
                    "sessions": "25"
                }
            },
            {
                "type": "sessions_by_device",
                "data": [
                    {
                        "dimension": "desktop",
                        "sessions": "18"
                    },
                    {
                        "dimension": "mobile",
                        "sessions": "7"
                    }
                ]
            },
            {
                "type": "user_type",
                "data": [
                    {
                        "dimension": "New Visitor",
                        "users": "24"
                    },
                    {
                        "dimension": "Returning Visitor",
                        "users": "1"
                    }
                ]
            },
            {
                "type": "channel_performance",
                "data": [
                    {
                        "dimension": "Organic Search",
                        "new_users": "14",
                        "percent_new_sessions": "100.0",
                        "sessions": "14",
                        "bounce_rate": "28.57142857142857",
                        "avg_session_duration": "46.785714285714285",
                        "pageviews_per_session": "2.7142857142857144"
                    },
                    {
                        "dimension": "Direct",
                        "new_users": "8",
                        "percent_new_sessions": "100.0",
                        "sessions": "8",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Paid Search",
                        "new_users": "2",
                        "percent_new_sessions": "66.66666666666666",
                        "sessions": "3",
                        "bounce_rate": "66.66666666666666",
                        "avg_session_duration": "11.666666666666666",
                        "pageviews_per_session": "2.0"
                    }
                ]
            },
            {
                "type": "pages_by_pageview",
                "data": [
                    {
                        "dimension": "/",
                        "sessions": "18",
                        "bounce_rate": "61.111111111111114",
                        "entrances": "18",
                        "pageviews": "22",
                        "avg_time_on_page": "17.22222222222222",
                        "exit_rate": "59.09090909090909"
                    },
                    {
                        "dimension": "/contact-us/",
                        "sessions": "2",
                        "bounce_rate": "50.0",
                        "entrances": "2",
                        "pageviews": "8",
                        "avg_time_on_page": "5.5",
                        "exit_rate": "50.0"
                    },
                    {
                        "dimension": "/our-products/",
                        "sessions": "2",
                        "bounce_rate": "0.0",
                        "entrances": "2",
                        "pageviews": "7",
                        "avg_time_on_page": "50.4",
                        "exit_rate": "28.57142857142857"
                    },
                    {
                        "dimension": "/our-services/",
                        "sessions": "0",
                        "bounce_rate": "0.0",
                        "entrances": "0",
                        "pageviews": "6",
                        "avg_time_on_page": "7.75",
                        "exit_rate": "33.33333333333333"
                    },
                    {
                        "dimension": "/about-us/",
                        "sessions": "0",
                        "bounce_rate": "0.0",
                        "entrances": "0",
                        "pageviews": "2",
                        "avg_time_on_page": "183.0",
                        "exit_rate": "50.0"
                    }
                ]
            },
            {
                "type": "top_landing_pages",
                "data": [
                    {
                        "dimension": "/",
                        "new_users": "18",
                        "percent_new_sessions": "100.0",
                        "sessions": "18",
                        "bounce_rate": "61.111111111111114",
                        "avg_session_duration": "27.27777777777778",
                        "pageviews_per_session": "2.0"
                    },
                    {
                        "dimension": "/contact-us/",
                        "new_users": "2",
                        "percent_new_sessions": "100.0",
                        "sessions": "2",
                        "bounce_rate": "50.0",
                        "avg_session_duration": "1.0",
                        "pageviews_per_session": "1.5"
                    },
                    {
                        "dimension": "/our-products/",
                        "new_users": "2",
                        "percent_new_sessions": "100.0",
                        "sessions": "2",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "81.0",
                        "pageviews_per_session": "3.5"
                    }
                ]
            },
            {
                "type": "top_source_medium",
                "data": [
                    {
                        "dimension": "google / organic",
                        "new_users": "12",
                        "percent_new_sessions": "100.0",
                        "sessions": "12",
                        "bounce_rate": "25.0",
                        "avg_session_duration": "51.5",
                        "pageviews_per_session": "2.6666666666666665"
                    },
                    {
                        "dimension": "(direct) / (none)",
                        "new_users": "8",
                        "percent_new_sessions": "100.0",
                        "sessions": "8",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "reachlocal / cpc",
                        "new_users": "2",
                        "percent_new_sessions": "66.66666666666666",
                        "sessions": "3",
                        "bounce_rate": "66.66666666666666",
                        "avg_session_duration": "11.666666666666666",
                        "pageviews_per_session": "2.0"
                    },
                    {
                        "dimension": "bing / organic",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "yahoo / organic",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "37.0",
                        "pageviews_per_session": "5.0"
                    }
                ]
            },
            {
                "type": "traffic_by_city",
                "data": [
                    {
                        "dimension": "Cheyenne",
                        "new_users": "3",
                        "percent_new_sessions": "100.0",
                        "sessions": "3",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Seattle",
                        "new_users": "3",
                        "percent_new_sessions": "100.0",
                        "sessions": "3",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "60.333333333333336",
                        "pageviews_per_session": "3.0"
                    },
                    {
                        "dimension": "Des Moines",
                        "new_users": "2",
                        "percent_new_sessions": "100.0",
                        "sessions": "2",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Kent",
                        "new_users": "2",
                        "percent_new_sessions": "100.0",
                        "sessions": "2",
                        "bounce_rate": "50.0",
                        "avg_session_duration": "17.5",
                        "pageviews_per_session": "2.5"
                    },
                    {
                        "dimension": "Lakewood",
                        "new_users": "1",
                        "percent_new_sessions": "50.0",
                        "sessions": "2",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "San Antonio",
                        "new_users": "2",
                        "percent_new_sessions": "100.0",
                        "sessions": "2",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Bainbridge Island",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "274.0",
                        "pageviews_per_session": "4.0"
                    },
                    {
                        "dimension": "Bremerton",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Dallas",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "36.0",
                        "pageviews_per_session": "4.0"
                    },
                    {
                        "dimension": "Gig Harbor",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "5.0",
                        "pageviews_per_session": "2.0"
                    },
                    {
                        "dimension": "Littlestown",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Los Angeles",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Poulsbo",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "37.0",
                        "pageviews_per_session": "5.0"
                    },
                    {
                        "dimension": "Puyallup",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "100.0",
                        "avg_session_duration": "0.0",
                        "pageviews_per_session": "1.0"
                    },
                    {
                        "dimension": "Sequim",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "76.0",
                        "pageviews_per_session": "4.0"
                    },
                    {
                        "dimension": "Tacoma",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "44.0",
                        "pageviews_per_session": "4.0"
                    },
                    {
                        "dimension": "Truckee",
                        "new_users": "1",
                        "percent_new_sessions": "100.0",
                        "sessions": "1",
                        "bounce_rate": "0.0",
                        "avg_session_duration": "2.0",
                        "pageviews_per_session": "2.0"
                    }
                ]
            },
            {
                "type": "sessions_by_month",
                "data": [
                    {
                        "dimension": "201901",
                        "sessions": "394"
                    },
                    {
                        "dimension": "201902",
                        "sessions": "336"
                    },
                    {
                        "dimension": "201903",
                        "sessions": "383"
                    },
                    {
                        "dimension": "201904",
                        "sessions": "507"
                    },
                    {
                        "dimension": "201905",
                        "sessions": "316"
                    },
                    {
                        "dimension": "201906",
                        "sessions": "425"
                    },
                    {
                        "dimension": "201907",
                        "sessions": "330"
                    },
                    {
                        "dimension": "201908",
                        "sessions": "367"
                    },
                    {
                        "dimension": "201909",
                        "sessions": "358"
                    },
                    {
                        "dimension": "201910",
                        "sessions": "390"
                    },
                    {
                        "dimension": "201911",
                        "sessions": "289"
                    },
                    {
                        "dimension": "201912",
                        "sessions": "295"
                    },
                    {
                        "dimension": "202001",
                        "sessions": "338"
                    },
                    {
                        "dimension": "202002",
                        "sessions": "357"
                    },
                    {
                        "dimension": "202003",
                        "sessions": "380"
                    },
                    {
                        "dimension": "202004",
                        "sessions": "302"
                    },
                    {
                        "dimension": "202005",
                        "sessions": "350"
                    },
                    {
                        "dimension": "202006",
                        "sessions": "372"
                    },
                    {
                        "dimension": "202007",
                        "sessions": "264"
                    }
                ]
            }
        ]
    }
}
```
