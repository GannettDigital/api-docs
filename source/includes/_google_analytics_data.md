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

#### User Type

Dimension: A boolean, either New Visitor or Returning Visitor, indicating if the users are new or returning.

| Metric | Description |
|---|---|
|`new_users`|The total number of new users for the requested time period.|

#### Channel Performance

Dimension: Channel Grouping, such as Organic, Paid Search, Direct, etc.

Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`total_users`|The number of sessions marked as sessions for all users.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

`second_data_set` can be returned by using `second_start_date` and `second_end_date` params.

#### Pages by Page View

Dimension: Page Path, the url of each page that was viewed

Dimension2: Page Title, the title of the page that was viewed'

Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`screenpageviews`|The total number of pageviews for the property.|
|`user_engagement_duration`|The average time users spent viewing this page or a set of pages.|

#### Top Landing Pages

Dimension: Page Path, the url of each page that was viewed

Dimension2: Page Title, the title of the page that was viewed

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`total_users`|The number of sessions marked as sessions for all users.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

#### Top Source Medium

Dimension: source/medium, where:

Source: The source of referrals. For manual campaign tracking, it is the value of the utm_source campaign tracking parameter. For AdWords autotagging, it is google. If you use neither, it is the domain of the source (e.g., document.referrer) referring the users. It may also contain a port address. If users arrived without a referrer, its value is (direct).

Medium: The type of referrals. For manual campaign tracking, it is the value of the utm_medium campaign tracking parameter. For AdWords autotagging, it is cpc. If users came from a search engine detected by Google Analytics, it is organic. If the referrer is not a search engine, it is referral. If users came directly to the property and document.referrer is empty, its value is (none).

| Metric | Description |
|---|---|
|`new_users`|The number of sessions marked as a user's first sessions.|
|`total_users`|The number of sessions marked as sessions for all users.|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|

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
curl --location --request GET 'https://data-connect-staging.gannettdigital.com/client_reports/google_analytics/TEST_1?start_date=2021-03-04&end_date=2021-03-04&page_size=1&second_start_date=2021-03-05&second_end_date=2021-03-05' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

# Example Response
```javascript
{
    "report_type": "google_analytics_data",
    "report_date": "2022-06-01",
    "start_date": "2022-05-28",
    "end_date": "2022-05-30",
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
                        "dimension": "date_range_1",
                        "new_users": "148",
                        "bounce_rate": "148",
                        "average_session_duration": "148",
                        "screenpageviews": "288",
                        "screenpageviews_per_session": "288",
                        "total_users": "288",
                        "sessions": "288"
                    },
                    {
                        "dimension": "date_range_0",
                        "new_users": "66",
                        "bounce_rate": "66",
                        "average_session_duration": "66",
                        "screenpageviews": "129",
                        "screenpageviews_per_session": "129",
                        "total_users": "129",
                        "sessions": "129"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "date_range_1",
                        "new_users": "0.37142857142857144",
                        "bounce_rate": "0.37142857142857144",
                        "average_session_duration": "0.37142857142857144",
                        "screenpageviews": "1.6457142857142857",
                        "screenpageviews_per_session": "1.6457142857142857",
                        "total_users": "1.6457142857142857",
                        "sessions": "1.6457142857142857"
                    },
                    {
                        "dimension": "date_range_0",
                        "new_users": "0.46835443037974683",
                        "bounce_rate": "0.46835443037974683",
                        "average_session_duration": "0.46835443037974683",
                        "screenpageviews": "1.6329113924050633",
                        "screenpageviews_per_session": "1.6329113924050633",
                        "total_users": "1.6329113924050633",
                        "sessions": "1.6329113924050633"
                    }
                ]
            },
            {
                "type": "sessions_by_device",
                "data": [
                    {
                        "dimension": "mobile",
                        "dimension2": "date_range_1",
                        "sessions": "111"
                    },
                    {
                        "dimension": "desktop",
                        "dimension2": "date_range_1",
                        "sessions": "61"
                    },
                    {
                        "dimension": "mobile",
                        "dimension2": "date_range_0",
                        "sessions": "51"
                    },
                    {
                        "dimension": "desktop",
                        "dimension2": "date_range_0",
                        "sessions": "27"
                    },
                    {
                        "dimension": "tablet",
                        "dimension2": "date_range_1",
                        "sessions": "3"
                    },
                    {
                        "dimension": "tablet",
                        "dimension2": "date_range_0",
                        "sessions": "1"
                    }
                ]
            },
            {
                "type": "pages_by_pageview",
                "data": [
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "65",
                        "bounce_rate": "65",
                        "screenpageviews": "65",
                        "user_engagement_duration": "65"
                    },
                    {
                        "dimension": "/",
                        "dimension2": "date_range_1",
                        "sessions": "66",
                        "bounce_rate": "66",
                        "screenpageviews": "66",
                        "user_engagement_duration": "66"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "31",
                        "bounce_rate": "31",
                        "screenpageviews": "31",
                        "user_engagement_duration": "31"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "date_range_1",
                        "sessions": "26",
                        "bounce_rate": "26",
                        "screenpageviews": "26",
                        "user_engagement_duration": "26"
                    },
                    {
                        "dimension": "/",
                        "dimension2": "date_range_0",
                        "sessions": "23",
                        "bounce_rate": "23",
                        "screenpageviews": "23",
                        "user_engagement_duration": "23"
                    },
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "24",
                        "bounce_rate": "24",
                        "screenpageviews": "24",
                        "user_engagement_duration": "24"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "22",
                        "bounce_rate": "22",
                        "screenpageviews": "22",
                        "user_engagement_duration": "22"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "date_range_1",
                        "sessions": "18",
                        "bounce_rate": "18",
                        "screenpageviews": "18",
                        "user_engagement_duration": "18"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "date_range_0",
                        "sessions": "11",
                        "bounce_rate": "11",
                        "screenpageviews": "11",
                        "user_engagement_duration": "11"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "date_range_0",
                        "sessions": "10",
                        "bounce_rate": "10",
                        "screenpageviews": "10",
                        "user_engagement_duration": "10"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "date_range_1",
                        "sessions": "9",
                        "bounce_rate": "9",
                        "screenpageviews": "9",
                        "user_engagement_duration": "9"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "date_range_0",
                        "sessions": "8",
                        "bounce_rate": "8",
                        "screenpageviews": "8",
                        "user_engagement_duration": "8"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "5",
                        "bounce_rate": "5",
                        "screenpageviews": "5",
                        "user_engagement_duration": "5"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "date_range_1",
                        "sessions": "6",
                        "bounce_rate": "6",
                        "screenpageviews": "6",
                        "user_engagement_duration": "6"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "date_range_1",
                        "sessions": "6",
                        "bounce_rate": "6",
                        "screenpageviews": "6",
                        "user_engagement_duration": "6"
                    },
                    {
                        "dimension": "/products/pet-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "5",
                        "bounce_rate": "5",
                        "screenpageviews": "5",
                        "user_engagement_duration": "5"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "date_range_0",
                        "sessions": "5",
                        "bounce_rate": "5",
                        "screenpageviews": "5",
                        "user_engagement_duration": "5"
                    },
                    {
                        "dimension": "/products/security-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "3",
                        "bounce_rate": "3",
                        "screenpageviews": "3",
                        "user_engagement_duration": "3"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "3",
                        "bounce_rate": "3",
                        "screenpageviews": "3",
                        "user_engagement_duration": "3"
                    },
                    {
                        "dimension": "/areas/encino-screen-contractor/",
                        "dimension2": "date_range_1",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/products/",
                        "dimension2": "date_range_0",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "3",
                        "bounce_rate": "3",
                        "screenpageviews": "3",
                        "user_engagement_duration": "3"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "date_range_0",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "date_range_0",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "date_range_1",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/areas/burbank-screen-contractor/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/woodland-hills-sreen-service/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/simi-valley-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "screenpageviews": "2",
                        "user_engagement_duration": "2"
                    },
                    {
                        "dimension": "/areas/agoura-hills-screen-company/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/encino-screen-contractor/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/thousand-oaks-screen-services/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/contact/thanks/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/contact/thanks/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/pet-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/window-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/agoura-hills-screen-company/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/burbank-screen-contractor/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/simi-valley-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/thousand-oaks-screen-services/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/woodland-hills-sreen-service/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/products/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/products/security-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/services/window-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "0.24615384615384617",
                        "bounce_rate": "0.24615384615384617",
                        "screenpageviews": "0.24615384615384617",
                        "user_engagement_duration": "0.24615384615384617"
                    },
                    {
                        "dimension": "/",
                        "dimension2": "date_range_1",
                        "sessions": "0.54545454545454541",
                        "bounce_rate": "0.54545454545454541",
                        "screenpageviews": "0.54545454545454541",
                        "user_engagement_duration": "0.54545454545454541"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "0.35483870967741937",
                        "bounce_rate": "0.35483870967741937",
                        "screenpageviews": "0.35483870967741937",
                        "user_engagement_duration": "0.35483870967741937"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "date_range_1",
                        "sessions": "0.92307692307692313",
                        "bounce_rate": "0.92307692307692313",
                        "screenpageviews": "0.92307692307692313",
                        "user_engagement_duration": "0.92307692307692313"
                    },
                    {
                        "dimension": "/",
                        "dimension2": "date_range_0",
                        "sessions": "0.60869565217391308",
                        "bounce_rate": "0.60869565217391308",
                        "screenpageviews": "0.60869565217391308",
                        "user_engagement_duration": "0.60869565217391308"
                    },
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0.33333333333333331",
                        "bounce_rate": "0.33333333333333331",
                        "screenpageviews": "0.33333333333333331",
                        "user_engagement_duration": "0.33333333333333331"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0.40909090909090912",
                        "bounce_rate": "0.40909090909090912",
                        "screenpageviews": "0.40909090909090912",
                        "user_engagement_duration": "0.40909090909090912"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "date_range_1",
                        "sessions": "0.83333333333333337",
                        "bounce_rate": "0.83333333333333337",
                        "screenpageviews": "0.83333333333333337",
                        "user_engagement_duration": "0.83333333333333337"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "date_range_0",
                        "sessions": "0.81818181818181823",
                        "bounce_rate": "0.81818181818181823",
                        "screenpageviews": "0.81818181818181823",
                        "user_engagement_duration": "0.81818181818181823"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "date_range_0",
                        "sessions": "0.875",
                        "bounce_rate": "0.875",
                        "screenpageviews": "0.875",
                        "user_engagement_duration": "0.875"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "date_range_1",
                        "sessions": "0.83333333333333337",
                        "bounce_rate": "0.83333333333333337",
                        "screenpageviews": "0.83333333333333337",
                        "user_engagement_duration": "0.83333333333333337"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/pet-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "0.8",
                        "bounce_rate": "0.8",
                        "screenpageviews": "0.8",
                        "user_engagement_duration": "0.8"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/security-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/encino-screen-contractor/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/burbank-screen-contractor/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/woodland-hills-sreen-service/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/simi-valley-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/agoura-hills-screen-company/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/encino-screen-contractor/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/thousand-oaks-screen-services/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/contact/thanks/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/contact/thanks/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/pet-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/",
                        "dimension2": "date_range_1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/services/window-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "1"
                    },
                    {
                        "dimension": "/areas/agoura-hills-screen-company/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/burbank-screen-contractor/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/simi-valley-screen-repair/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/thousand-oaks-screen-services/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/areas/woodland-hills-sreen-service/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/products/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/products/security-screen-doors/",
                        "dimension2": "date_range_0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    },
                    {
                        "dimension": "/services/window-repair/",
                        "dimension2": "date_range_1",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    }
                ]
            },
            {
                "type": "channel_performance",
                "data": [
                    {
                        "dimension": "Paid Other",
                        "dimension2": "date_range_1",
                        "new_users": "93",
                        "total_users": "93",
                        "sessions": "93",
                        "bounce_rate": "93",
                        "average_session_duration": "93",
                        "screenpageviews_per_session": "93"
                    },
                    {
                        "dimension": "Paid Other",
                        "dimension2": "date_range_0",
                        "new_users": "43",
                        "total_users": "43",
                        "sessions": "43",
                        "bounce_rate": "43",
                        "average_session_duration": "43",
                        "screenpageviews_per_session": "43"
                    },
                    {
                        "dimension": "Direct",
                        "dimension2": "date_range_1",
                        "new_users": "37",
                        "total_users": "37",
                        "sessions": "37",
                        "bounce_rate": "37",
                        "average_session_duration": "37",
                        "screenpageviews_per_session": "37"
                    },
                    {
                        "dimension": "Organic Search",
                        "dimension2": "date_range_1",
                        "new_users": "17",
                        "total_users": "17",
                        "sessions": "17",
                        "bounce_rate": "17",
                        "average_session_duration": "17",
                        "screenpageviews_per_session": "17"
                    },
                    {
                        "dimension": "Organic Search",
                        "dimension2": "date_range_0",
                        "new_users": "12",
                        "total_users": "12",
                        "sessions": "12",
                        "bounce_rate": "12",
                        "average_session_duration": "12",
                        "screenpageviews_per_session": "12"
                    },
                    {
                        "dimension": "Direct",
                        "dimension2": "date_range_0",
                        "new_users": "10",
                        "total_users": "10",
                        "sessions": "10",
                        "bounce_rate": "10",
                        "average_session_duration": "10",
                        "screenpageviews_per_session": "10"
                    },
                    {
                        "dimension": "Organic Social",
                        "dimension2": "date_range_0",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Organic Social",
                        "dimension2": "date_range_1",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Unassigned",
                        "dimension2": "date_range_0",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    },
                    {
                        "dimension": "Unassigned",
                        "dimension2": "date_range_1",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "Paid Other",
                        "dimension2": "date_range_1",
                        "new_users": "98",
                        "total_users": "98",
                        "sessions": "98",
                        "bounce_rate": "98",
                        "average_session_duration": "98",
                        "screenpageviews_per_session": "98"
                    },
                    {
                        "dimension": "Paid Other",
                        "dimension2": "date_range_0",
                        "new_users": "47",
                        "total_users": "47",
                        "sessions": "47",
                        "bounce_rate": "47",
                        "average_session_duration": "47",
                        "screenpageviews_per_session": "47"
                    },
                    {
                        "dimension": "Direct",
                        "dimension2": "date_range_1",
                        "new_users": "39",
                        "total_users": "39",
                        "sessions": "39",
                        "bounce_rate": "39",
                        "average_session_duration": "39",
                        "screenpageviews_per_session": "39"
                    },
                    {
                        "dimension": "Organic Search",
                        "dimension2": "date_range_1",
                        "new_users": "19",
                        "total_users": "19",
                        "sessions": "19",
                        "bounce_rate": "19",
                        "average_session_duration": "19",
                        "screenpageviews_per_session": "19"
                    },
                    {
                        "dimension": "Organic Search",
                        "dimension2": "date_range_0",
                        "new_users": "14",
                        "total_users": "14",
                        "sessions": "14",
                        "bounce_rate": "14",
                        "average_session_duration": "14",
                        "screenpageviews_per_session": "14"
                    },
                    {
                        "dimension": "Direct",
                        "dimension2": "date_range_0",
                        "new_users": "11",
                        "total_users": "11",
                        "sessions": "11",
                        "bounce_rate": "11",
                        "average_session_duration": "11",
                        "screenpageviews_per_session": "11"
                    },
                    {
                        "dimension": "Organic Social",
                        "dimension2": "date_range_0",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Organic Social",
                        "dimension2": "date_range_1",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Unassigned",
                        "dimension2": "date_range_0",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Unassigned",
                        "dimension2": "date_range_1",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    }
                ]
            },
            {
                "type": "user_type",
                "data": {
                    "new_users": "66"
                }
            },
            {
                "type": "top_landing_pages",
                "data": [
                    {
                        "dimension": "/",
                        "new_users": "18",
                        "total_users": "18",
                        "sessions": "18",
                        "bounce_rate": "18",
                        "average_session_duration": "18",
                        "screenpageviews_per_session": "18"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "(not set)",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    },
                    {
                        "dimension": "/services/door-screen-repair/?scid=2231462&kw=926107&pub_cr_id=596522195991&device=m&network=g&targetid=kwd-112891863&loc_interest_ms=&loc_physical_ms=9031161&tc=EAIaIQobChMI1euC48yD-AIVcMLCBB2LpglGEAAYAiAAEgKU_PD_BwE&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "2",
                        "average_session_duration": "2",
                        "screenpageviews_per_session": "2"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/services/window-screen-repair/?scid=2231462&kw=1908356&pub_cr_id=596522195901&device=m&network=g&targetid=kwd-26060426&loc_interest_ms=&loc_physical_ms=9030970&tc=Cj0KCQjw1tGUBhDXARIsAIJx01k09V_bujF5sEFTIfT8HFYILWvb87AGCOsqPPlpXUz8jKBdhkGPTBwaAifJEALw_wcB&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    },
                    {
                        "dimension": "/?scid=2231460&kw=7376897&pub_cr_id=77378299623496&network=o&device=c&targetid=kwd-77378358683618&loc_interest_ms=&loc_physical_ms=79874&tc=e791f25cb8fc1abd768790cf62c16fc4&rl_key=b2b54ebcc6535aaa4606a0b5a9e75c34",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/?scid=2231462&pub_cr_id=596522195901&rl_sitelink=1907126&device=m&network=g&targetid=kwd-356817777259&loc_interest_ms=&loc_physical_ms=1014389&tc=CjwKCAjws8yUBhA1EiwAi_tpEeTCqlJpr2udZb-lrplbBUF5F1LsSn9NJpcJSOyTM0zGW58DImNjQhoCtiIQAvD_BwE&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/?scid=2231462&pub_cr_id=596522195991&rl_sitelink=1907126&device=m&network=g&targetid=kwd-3366576473&loc_interest_ms=&loc_physical_ms=9073456&tc=CjwKCAjwkMeUBhBuEiwA4hpqEDsQ1DAV9MMOxzo_VxTOU-dkYhtf1Hdyz5Sg-kikndfM5CfAnYzHGRoCg38QAvD_BwE&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    }
                ]
            },
            {
                "type": "top_source_medium",
                "data": []
            },
            {
                "type": "traffic_by_city",
                "data": [
                    {
                        "dimension": "Los Angeles",
                        "new_users": "47",
                        "total_users": "47",
                        "sessions": "47",
                        "bounce_rate": "47",
                        "average_session_duration": "47",
                        "screenpageviews_per_session": "47"
                    },
                    {
                        "dimension": "(not set)",
                        "new_users": "6",
                        "total_users": "6",
                        "sessions": "6",
                        "bounce_rate": "6",
                        "average_session_duration": "6",
                        "screenpageviews_per_session": "6"
                    },
                    {
                        "dimension": "Santa Clarita",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "3",
                        "average_session_duration": "3",
                        "screenpageviews_per_session": "3"
                    },
                    {
                        "dimension": "Castaic",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Danbury",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Fitchburg",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Fort Worth",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Glendale",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Lancaster",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Moorpark",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "San Jose",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "San Marino",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Thousand Oaks",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "1",
                        "screenpageviews_per_session": "1"
                    }
                ]
            },
            {
                "type": "sessions_by_day",
                "data": [
                    {
                        "dimension": "2022-05-30",
                        "sessions": "28"
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
                        "dimension": "0028",
                        "sessions": "1357"
                    },
                    {
                        "dimension": "0027",
                        "sessions": "1309"
                    }
                ]
            }
        ]
    }
}
```
