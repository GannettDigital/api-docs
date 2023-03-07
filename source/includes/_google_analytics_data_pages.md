## Google Analytics (Google Analytics 4 Report)

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_analytics_data_pages/[gmaid]?[query_params]

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
|`sort_by`|No|Applies only to Search Console data. Use "clicks", "impressions", "postion", or "ctr". Returns top 20 results. Default: "clicks"|
|`page_size`|No|Applies ONLY to responses of reports `pages_by_pageview` and `top_landing_pages`. Default: 10|
|`second_start_date`|No|Applies ONLY to responses of reports ` website_traffic` `pages_by_pageview`, and  `channel_performance`.|
|`second_end_date`|No|Requires use of `second_start_date`. Will return `second_data_set` object or array. Applies ONLY to responses of reports ` website_traffic` `pages_by_pageview`, and  `channel_performance`.|


Note: All filters use AND logic to match results.

### Metrics

#### User Type

Dimension1: A boolean, either New Visitor or Returning Visitor, indicating if the users are new or returning.

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
|`average_session_duration`|The average duration (in seconds) of users' sessions.|
|`screenpageviews_per_session`|The average number of pages viewed during a session, including repeated views of a single page.|
|`engaged_sessions`|The total number of engaged sessions for the requested time period.|
|`engagement_rate`|The number of engaged sessions divided by the total number of sessions over a specified time period displayed as a percentage.|
|`event_count`|The count of events.|
|`active_users`|The number of distinct users who visited the site.|
|`page_views`|The total number of Page Views for the requested time period.|

`second_data_set` can be returned by using `second_start_date` and `second_end_date` params.

#### Pages by Page View

Dimension1: Page Path, the url of each page that was viewed

Dimension2: Page Title, the title of the page that was viewed'

Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`sessions`|The total number of sessions.|
|`bounce_rate`|The percentage of single-page session (i.e., session in which the person left the property from the first page).|
|`screen_page_views`|The total number of pageviews for the property.|
|`user_engagement_duration`|The average time users spent viewing this page or a set of pages.|

#### Top Landing Pages

Dimension1: Page Path, the url of each page that was viewed

Dimension2: Page Title, the title of the page that was viewed

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


#### Top Source Medium

Dimension1: source/medium, where:
Dimension2: medium, where:

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
#### Event by Count
Dimension1: Event Name

Can return a second_data_set by using second_start_date and second_end_date params.

| Metric | Description |
|---|---|
|`event_count`|The count of top 20 events.|
### Examples

```
curl --location --request GET 'https://data-connect-staging.gannettdigital.com/client_reports/google_analytics_data_pages/TEST_1?start_date=2021-03-04&end_date=2021-03-04&page_size=1&second_start_date=2021-03-05&second_end_date=2021-03-05' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

# Example Response
```javascript
{
    "report_type": "google_analytics_data_pages",
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
                "type": "user_type",
                "data": [
                    {
                        "new_users": "87",
                        "total_users": "95"
                    }
                ]
            },
            {
                "type": "top_landing_pages",
                "data": [
                    {
                        "dimension1": "/",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "16",
                        "total_users": "20",
                        "sessions": "25",
                        "bounce_rate": "0.68",
                        "average_session_duration": "63.31445588",
                        "screenpageviews_per_session": "1.2",
                        "screen_page_views": "30",
                        "engaged_sessions": "8",
                        "engagement_rate": "0.32"
                    },
                    {
                        "dimension1": "/",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "14",
                        "total_users": "21",
                        "sessions": "24",
                        "bounce_rate": "0.625",
                        "average_session_duration": "14.87196",
                        "screenpageviews_per_session": "1.125",
                        "screen_page_views": "27",
                        "engaged_sessions": "9",
                        "engagement_rate": "0.375"
                    },
                    {
                        "dimension1": "/",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "4",
                        "sessions": "4",
                        "bounce_rate": "0.75",
                        "average_session_duration": "77.8287065",
                        "screenpageviews_per_session": "1.25",
                        "screen_page_views": "5",
                        "engaged_sessions": "1",
                        "engagement_rate": "0.25"
                    },
                    {
                        "dimension1": "/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "28.5431205",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "2",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "52.129252",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "1",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "352.729579",
                        "screenpageviews_per_session": "2",
                        "screen_page_views": "2",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/products/",
                        "dimension2": "Screen Products - Northridge Screen Services",
                        "new_users": "3",
                        "total_users": "4",
                        "sessions": "4",
                        "bounce_rate": "0.5",
                        "average_session_duration": "59.0484045",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "4",
                        "engaged_sessions": "2",
                        "engagement_rate": "0.5"
                    },
                    {
                        "dimension1": "/products/",
                        "dimension2": "Screen Products - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0",
                        "screen_page_views": "0",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "(not set)",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "0",
                        "total_users": "2",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0",
                        "screen_page_views": "0",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "(not set)",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0",
                        "screen_page_views": "0",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/?scid=2231460&kw=3824523&pub_cr_id=77515725231473&network=o&device=c&targetid=kwd-27336883929&loc_interest_ms=&loc_physical_ms=80221&tc=0ddc9f0158101bd2874afd7081ec79da&rl_key=b2b54ebcc6535aaa4606a0b5a9e75c34",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0.5",
                        "average_session_duration": "252.613272",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "2",
                        "engaged_sessions": "1",
                        "engagement_rate": "0.5"
                    },
                    {
                        "dimension1": "/?scid=2231460&kw=3824523&pub_cr_id=77515725231473&network=o&device=c&targetid=kwd-27336883929&loc_interest_ms=&loc_physical_ms=80221&tc=0ddc9f0158101bd2874afd7081ec79da&rl_key=b2b54ebcc6535aaa4606a0b5a9e75c34",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0",
                        "screen_page_views": "0",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/about/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0",
                        "average_session_duration": "151.7678885",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "2",
                        "engaged_sessions": "2",
                        "engagement_rate": "1"
                    },
                    {
                        "dimension1": "/about/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "2",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "Sherman Oaks - Mobile Screen Service | Windows, Doors",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0",
                        "average_session_duration": "46.89256",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "2",
                        "engaged_sessions": "2",
                        "engagement_rate": "1"
                    },
                    {
                        "dimension1": "/areas/sherman-oaks-screen-repair/",
                        "dimension2": "Sherman Oaks - Mobile Screen Service | Windows, Doors",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "1",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/areas/",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0.5",
                        "average_session_duration": "454.7344615",
                        "screenpageviews_per_session": "1.5",
                        "screen_page_views": "3",
                        "engaged_sessions": "1",
                        "engagement_rate": "0.5"
                    },
                    {
                        "dimension1": "/areas/",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "1",
                        "engaged_sessions": "0",
                        "engagement_rate": "0"
                    },
                    {
                        "dimension1": "/areas/encino-screen-contractor/",
                        "dimension2": "Encino Screen Services: Repair or Replace Window Screens",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "348.581973",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "1",
                        "engaged_sessions": "1",
                        "engagement_rate": "1"
                    },
                    {
                        "dimension1": "/areas/encino-screen-contractor/",
                        "dimension2": "Encino Screen Services: Repair or Replace Window Screens",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "1091.155678",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "1",
                        "engaged_sessions": "1",
                        "engagement_rate": "1"
                    }
                ]
            },
            {
                "type": "top_source_medium",
                "data": [
                    {
                        "dimension1": "reachlocal / cpc",
                        "dimension2": "cpc",
                        "new_users": "65",
                        "total_users": "68",
                        "sessions": "72",
                        "bounce_rate": "0.3888888888888889",
                        "average_session_duration": "178.05985377777779",
                        "screenpageviews_per_session": "1.6111111111111112"
                    },
                    {
                        "dimension1": "reachlocal / cpc",
                        "dimension2": "cpc",
                        "new_users": "43",
                        "total_users": "44",
                        "sessions": "47",
                        "bounce_rate": "0.44680851063829785",
                        "average_session_duration": "128.8252785319149",
                        "screenpageviews_per_session": "1.8085106382978724"
                    },
                    {
                        "dimension1": "(direct) / (none)",
                        "dimension2": "(none)",
                        "new_users": "13",
                        "total_users": "15",
                        "sessions": "20",
                        "bounce_rate": "0.9",
                        "average_session_duration": "11.81041705",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension1": "(direct) / (none)",
                        "dimension2": "(none)",
                        "new_users": "9",
                        "total_users": "11",
                        "sessions": "13",
                        "bounce_rate": "0.61538461538461542",
                        "average_session_duration": "27.934996307692305",
                        "screenpageviews_per_session": "1.1538461538461537"
                    },
                    {
                        "dimension1": "google / organic",
                        "dimension2": "organic",
                        "new_users": "13",
                        "total_users": "16",
                        "sessions": "20",
                        "bounce_rate": "0.55",
                        "average_session_duration": "160.68857340000002",
                        "screenpageviews_per_session": "1.7"
                    },
                    {
                        "dimension1": "google / organic",
                        "dimension2": "organic",
                        "new_users": "10",
                        "total_users": "13",
                        "sessions": "15",
                        "bounce_rate": "0.13333333333333333",
                        "average_session_duration": "81.367205533333333",
                        "screenpageviews_per_session": "1.7333333333333334"
                    },
                    {
                        "dimension1": "baidu / organic",
                        "dimension2": "organic",
                        "new_users": "3",
                        "total_users": "3",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension1": "baidu / organic",
                        "dimension2": "organic",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    },
                    {
                        "dimension1": "bing / organic",
                        "dimension2": "organic",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0",
                        "average_session_duration": "52.3927185",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension1": "bing / organic",
                        "dimension2": "organic",
                        "new_users": "0",
                        "total_users": "0",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "0"
                    },
                    {
                        "dimension1": "duckduckgo / organic",
                        "dimension2": "organic",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "223.211849",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension1": "duckduckgo / organic",
                        "dimension2": "organic",
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
                "type": "pages_by_pageview",
                "data": [
                    {
                        "dimension1": "",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "sessions": "34",
                        "bounce_rate": "0.52941176470588236",
                        "screenpageviews": "38",
                        "user_engagement_duration": "472"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Window Screen Repair Service - Northridge Screen Services",
                        "sessions": "31",
                        "bounce_rate": "0.41935483870967744",
                        "screenpageviews": "36",
                        "user_engagement_duration": "1067"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "sessions": "29",
                        "bounce_rate": "0.44827586206896552",
                        "screenpageviews": "32",
                        "user_engagement_duration": "1234"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "sessions": "13",
                        "bounce_rate": "0.84615384615384615",
                        "screenpageviews": "16",
                        "user_engagement_duration": "712"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "sessions": "14",
                        "bounce_rate": "0.9285714285714286",
                        "screenpageviews": "15",
                        "user_engagement_duration": "947"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "About Us - Northridge Screen Services",
                        "sessions": "5",
                        "bounce_rate": "0.6",
                        "screenpageviews": "5",
                        "user_engagement_duration": "398"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Screen Mesh Replacement Service - Northridge Screen Services",
                        "sessions": "4",
                        "bounce_rate": "0.75",
                        "screenpageviews": "3",
                        "user_engagement_duration": "22"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Sliding Screen Door Products - Northridge Screen Services",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "screenpageviews": "3",
                        "user_engagement_duration": "27"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Screen Products - Northridge Screen Services",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "screenpageviews": "2",
                        "user_engagement_duration": "79"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Thank You - Northridge Screen Services",
                        "sessions": "0",
                        "bounce_rate": "0",
                        "screenpageviews": "0",
                        "user_engagement_duration": "0"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension1": "",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "sessions": "35",
                        "bounce_rate": "0.37142857142857144",
                        "screenpageviews": "43",
                        "user_engagement_duration": "1400"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "sessions": "30",
                        "bounce_rate": "0.7",
                        "screenpageviews": "32",
                        "user_engagement_duration": "710"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Window Screen Repair Service - Northridge Screen Services",
                        "sessions": "16",
                        "bounce_rate": "0.75",
                        "screenpageviews": "17",
                        "user_engagement_duration": "296"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "sessions": "7",
                        "bounce_rate": "1",
                        "screenpageviews": "9",
                        "user_engagement_duration": "1436"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Screen Products - Northridge Screen Services",
                        "sessions": "6",
                        "bounce_rate": "0.66666666666666663",
                        "screenpageviews": "7",
                        "user_engagement_duration": "279"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "sessions": "6",
                        "bounce_rate": "1",
                        "screenpageviews": "6",
                        "user_engagement_duration": "117"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Sliding Screen Door Products - Northridge Screen Services",
                        "sessions": "4",
                        "bounce_rate": "1",
                        "screenpageviews": "6",
                        "user_engagement_duration": "261"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Thank You - Northridge Screen Services",
                        "sessions": "5",
                        "bounce_rate": "1",
                        "screenpageviews": "5",
                        "user_engagement_duration": "20"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "About Us - Northridge Screen Services",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "screenpageviews": "3",
                        "user_engagement_duration": "25"
                    },
                    {
                        "dimension1": "",
                        "dimension2": "Screen Mesh Replacement Service - Northridge Screen Services",
                        "sessions": "3",
                        "bounce_rate": "1",
                        "screenpageviews": "3",
                        "user_engagement_duration": "27"
                    }
                ]
            },
            {
                "type": "channel_performance",
                "data": [
                    {
                        "dimension1": "Paid Other",
                        "new_users": "65",
                        "total_users": "68",
                        "sessions": "72",
                        "average_session_duration": "178.05985377777779",
                        "screenpageviews_per_session": "1.6111111111111112",
                        "screen_page_views": "116",
                        "engaged_sessions": "44",
                        "engagement_rate": "0.61111111111111116",
                        "event_count": "354",
                        "active_users": "68"
                    },
                    {
                        "dimension1": "Organic Search",
                        "new_users": "13",
                        "total_users": "16",
                        "sessions": "18",
                        "average_session_duration": "67.8060046111111",
                        "screenpageviews_per_session": "1.6111111111111112",
                        "screen_page_views": "29",
                        "engaged_sessions": "13",
                        "engagement_rate": "0.72222222222222221",
                        "event_count": "88",
                        "active_users": "16"
                    },
                    {
                        "dimension1": "Direct",
                        "new_users": "9",
                        "total_users": "11",
                        "sessions": "13",
                        "average_session_duration": "27.934996307692305",
                        "screenpageviews_per_session": "1.1538461538461537",
                        "screen_page_views": "15",
                        "engaged_sessions": "5",
                        "engagement_rate": "0.38461538461538464",
                        "event_count": "42",
                        "active_users": "11"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension1": "Paid Other",
                        "new_users": "43",
                        "total_users": "44",
                        "sessions": "47",
                        "average_session_duration": "128.8252785319149",
                        "screenpageviews_per_session": "1.8085106382978724",
                        "screen_page_views": "85",
                        "engaged_sessions": "26",
                        "engagement_rate": "0.55319148936170215",
                        "event_count": "244",
                        "active_users": "44"
                    },
                    {
                        "dimension1": "Organic Search",
                        "new_users": "16",
                        "total_users": "19",
                        "sessions": "23",
                        "average_session_duration": "153.98994582608697",
                        "screenpageviews_per_session": "1.6086956521739131",
                        "screen_page_views": "37",
                        "engaged_sessions": "12",
                        "engagement_rate": "0.52173913043478259",
                        "event_count": "106",
                        "active_users": "19"
                    },
                    {
                        "dimension1": "Direct",
                        "new_users": "13",
                        "total_users": "15",
                        "sessions": "20",
                        "average_session_duration": "11.81041705",
                        "screenpageviews_per_session": "1",
                        "screen_page_views": "20",
                        "engaged_sessions": "2",
                        "engagement_rate": "0.1",
                        "event_count": "58",
                        "active_users": "15"
                    }
                ]
            },
            {
                "type": "events_by_count",
                "data": [
                    {
                        "dimension1": "page_view",
                        "event_count": "160"
                    },
                    {
                        "dimension1": "user_engagement",
                        "event_count": "115"
                    },
                    {
                        "dimension1": "session_start",
                        "event_count": "103"
                    },
                    {
                        "dimension1": "first_visit",
                        "event_count": "87"
                    },
                    {
                        "dimension1": "scroll",
                        "event_count": "19"
                    },
                    {
                        "dimension1": "click",
                        "event_count": "0"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension1": "page_view",
                        "event_count": "142"
                    },
                    {
                        "dimension1": "user_engagement",
                        "event_count": "84"
                    },
                    {
                        "dimension1": "session_start",
                        "event_count": "90"
                    },
                    {
                        "dimension1": "first_visit",
                        "event_count": "72"
                    },
                    {
                        "dimension1": "scroll",
                        "event_count": "19"
                    },
                    {
                        "dimension1": "click",
                        "event_count": "1"
                    }
                ]
            }
        ]
    }
}
```