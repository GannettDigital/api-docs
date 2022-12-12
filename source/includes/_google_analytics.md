## Google Analytics (Universal Analytics)

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_analytics/[gmaid]?[query_params]

#### API Name: google_analytics
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
|`page_path_1`|No|Restricts results using an inclusive regex match of the first level path. Ex. `page_path_1=newark` returns results for `/newark/*`, `newark-hoboken/*`, etc.|
|`page_path_2`|No|Restricts results using an inclusive regex match of the second level path. Ex. `page_path_2=services` returns results for `/newark/service/*`, `/hoboken/service-center/*`, etc.|
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
|`avg_session_duration`|The average duration (in seconds) of users' sessions.|
|`goal_completions_all`|Total number of completions for all goals defined in the profile.|
|`goal_conversion_rate_all`|The percentage of sessions which resulted in a conversion to at least one of the goals.|
|`pageviews`|The total number of pageviews for the property.|
|`unique_pageviews`|The total number of unique pageviews for the property.|
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

#### Special Feature - Segment
A single segment "filter" can be applied across all reports in this response by updating the segment_id value in the google_api_configurations table. All Neighborly gmaids have a special segment applied through a special mapping table.
### Examples

```
curl --location --request GET 'https://data-connect-staging.gannettdigital.com/client_reports/google_analytics/TEST_1?start_date=2021-03-04&end_date=2021-03-04&page_size=1&second_start_date=2021-03-05&second_end_date=2021-03-05' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

# Example Response
```javascript
{
  "report_type": "google_analytics",
  "report_date": "2022-04-14",
  "start_date": "2021-03-04",
  "end_date": "2021-03-05",
  "global_master_advertiser_id": "TEST_1",
  "view_id": "12345678",
  "view_name": null,
  "account_id": null,
  "account_name": null,
  "web_property_id": "1234567890",
  "web_property_name": null,
  "report_data": {
    [
      {
        "type": "website_traffic",
        "data": {
          "new_users": "15",
          "percent_new_sessions": "78.94736842105263",
          "bounce_rate": "73.68421052631578",
          "avg_session_duration": "19.894736842105264",
          "goal_completions_all": "0",
          "goal_conversion_rate_all": "0.0",
          "pageviews": "24",
          "pageviews_per_session": "1.263157894736842",
          "avg_time_on_page": "75.6",
          "avg_page_load_time": "0.0",
          "users": "18",
          "sessions": "19"
        },
        "second_data_set": {
          "new_users": "16",
          "percent_new_sessions": "84.21052631578947",
          "bounce_rate": "57.89473684210527",
          "avg_session_duration": "66.42105263157895",
          "goal_completions_all": "0",
          "goal_conversion_rate_all": "0.0",
          "pageviews": "37",
          "pageviews_per_session": "1.9473684210526316",
          "avg_time_on_page": "70.16666666666667",
          "avg_page_load_time": "0.0",
          "users": "17",
          "sessions": "19"
        }
      },
      {
        "type": "sessions_by_device",
        "data": [
          {
            "dimension": "desktop",
            "sessions": "13"
          },
          {
            "dimension": "mobile",
            "sessions": "6"
          },
          {
            "dimension": "tablet",
            "sessions": "0"
          }
        ]
      },
      {
        "type": "traffic_by_city",
        "data": [
          {
            "dimension": "Los Angeles",
            "new_users": "9",
            "percent_new_sessions": "81.81818181818183",
            "sessions": "11",
            "bounce_rate": "54.54545454545454",
            "avg_session_duration": "34.36363636363637",
            "pageviews_per_session": "1.4545454545454546"
          },
          {
            "dimension": "Chicago",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Coffeyville",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Columbus",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Des Moines",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Istanbul",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Quezon City",
            "new_users": "1",
            "percent_new_sessions": "100.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "Santa Clarita",
            "new_users": "0",
            "percent_new_sessions": "0.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          },
          {
            "dimension": "West Hollywood",
            "new_users": "0",
            "percent_new_sessions": "0.0",
            "sessions": "1",
            "bounce_rate": "100.0",
            "avg_session_duration": "0.0",
            "pageviews_per_session": "1.0"
          }
        ]
      },
      {
        "type": "sessions_by_day",
        "data": [
          {
            "dimension": "2021-03-04",
            "sessions": "19"
          },
          {
            "dimension": "2021-03-05",
            "sessions": "0"
          }
        ]
      },
      {
        "type": "sessions_by_month",
        "data": [
          {
            "dimension": "202001",
            "sessions": "439"
          },
          {
            "dimension": "202002",
            "sessions": "412"
          },
          {
            "dimension": "202003",
            "sessions": "341"
          },
          {
            "dimension": "202004",
            "sessions": "586"
          },
          {
            "dimension": "202005",
            "sessions": "997"
          },
          {
            "dimension": "202006",
            "sessions": "1065"
          },
          {
            "dimension": "202007",
            "sessions": "1159"
          },
          {
            "dimension": "202008",
            "sessions": "963"
          },
          {
            "dimension": "202009",
            "sessions": "866"
          },
          {
            "dimension": "202010",
            "sessions": "686"
          },
          {
            "dimension": "202011",
            "sessions": "1110"
          },
          {
            "dimension": "202012",
            "sessions": "939"
          },
          {
            "dimension": "202101",
            "sessions": "932"
          },
          {
            "dimension": "202102",
            "sessions": "924"
          },
          {
            "dimension": "202103",
            "sessions": "1079"
          },
          {
            "dimension": "202104",
            "sessions": "1158"
          },
          {
            "dimension": "202105",
            "sessions": "1329"
          },
          {
            "dimension": "202106",
            "sessions": "1358"
          },
          {
            "dimension": "202107",
            "sessions": "1279"
          },
          {
            "dimension": "202108",
            "sessions": "1357"
          },
          {
            "dimension": "202109",
            "sessions": "1707"
          },
          {
            "dimension": "202110",
            "sessions": "1268"
          },
          {
            "dimension": "202111",
            "sessions": "1398"
          },
          {
            "dimension": "202112",
            "sessions": "972"
          }
        ]
      }
    ]
  }
}
```
