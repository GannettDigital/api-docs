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
    "report_date": "2022-06-07",
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
                "type": "pages_by_pageview",
                "data": [
                    {
                        "dimension": "/",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "sessions": "23",
                        "bounce_rate": "0.60869565217391308",
                        "screenpageviews": "27",
                        "user_engagement_duration": "572"
                    },
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "sessions": "31",
                        "bounce_rate": "0.45161290322580644",
                        "screenpageviews": "33",
                        "user_engagement_duration": "997"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "Window Screen Repair Service - Northridge Screen Services",
                        "sessions": "25",
                        "bounce_rate": "0.44",
                        "screenpageviews": "29",
                        "user_engagement_duration": "899"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "sessions": "10",
                        "bounce_rate": "1",
                        "screenpageviews": "10",
                        "user_engagement_duration": "497"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "sessions": "12",
                        "bounce_rate": "0.75",
                        "screenpageviews": "12",
                        "user_engagement_duration": "367"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "Screen Mesh Replacement Service - Northridge Screen Services",
                        "sessions": "10",
                        "bounce_rate": "0.9",
                        "screenpageviews": "10",
                        "user_engagement_duration": "20"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "Sliding Screen Door Products - Northridge Screen Services",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "screenpageviews": "1",
                        "user_engagement_duration": "41"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "screenpageviews": "2",
                        "user_engagement_duration": "24"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "Contact Us - Northridge Screen Services",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "screenpageviews": "2",
                        "user_engagement_duration": "346"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "Thank You - Northridge Screen Services",
                        "sessions": "5",
                        "bounce_rate": "1",
                        "screenpageviews": "4",
                        "user_engagement_duration": "13"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "/",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "sessions": "49",
                        "bounce_rate": "0.51020408163265307",
                        "screenpageviews": "58",
                        "user_engagement_duration": "1859"
                    },
                    {
                        "dimension": "/services/door-screen-repair/",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "sessions": "43",
                        "bounce_rate": "0.23255813953488372",
                        "screenpageviews": "47",
                        "user_engagement_duration": "1443"
                    },
                    {
                        "dimension": "/services/window-screen-repair/",
                        "dimension2": "Window Screen Repair Service - Northridge Screen Services",
                        "sessions": "24",
                        "bounce_rate": "0.375",
                        "screenpageviews": "27",
                        "user_engagement_duration": "958"
                    },
                    {
                        "dimension": "/pricing/",
                        "dimension2": "Request Pricing - Northridge Screen Services",
                        "sessions": "18",
                        "bounce_rate": "0.88888888888888884",
                        "screenpageviews": "22",
                        "user_engagement_duration": "1096"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "sessions": "17",
                        "bounce_rate": "0.82352941176470584",
                        "screenpageviews": "16",
                        "user_engagement_duration": "444"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "Screen Mesh Replacement Service - Northridge Screen Services",
                        "sessions": "7",
                        "bounce_rate": "1",
                        "screenpageviews": "7",
                        "user_engagement_duration": "110"
                    },
                    {
                        "dimension": "/products/sliding-screen-doors/",
                        "dimension2": "Sliding Screen Door Products - Northridge Screen Services",
                        "sessions": "4",
                        "bounce_rate": "1",
                        "screenpageviews": "6",
                        "user_engagement_duration": "257"
                    },
                    {
                        "dimension": "/about/",
                        "dimension2": "About Us - Northridge Screen Services",
                        "sessions": "5",
                        "bounce_rate": "0.8",
                        "screenpageviews": "5",
                        "user_engagement_duration": "141"
                    },
                    {
                        "dimension": "/contact/",
                        "dimension2": "Contact Us - Northridge Screen Services",
                        "sessions": "5",
                        "bounce_rate": "1",
                        "screenpageviews": "5",
                        "user_engagement_duration": "70"
                    },
                    {
                        "dimension": "/pricing/thanks/",
                        "dimension2": "Thank You - Northridge Screen Services",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "screenpageviews": "2",
                        "user_engagement_duration": "18"
                    }
                ]
            },
            {
                "type": "channel_performance",
                "data": [
                    {
                        "dimension": "Paid Other",
                        "new_users": "53",
                        "total_users": "57",
                        "sessions": "65",
                        "bounce_rate": "0.46153846153846156",
                        "average_session_duration": "92.679046815384609",
                        "screenpageviews_per_session": "1.5538461538461539"
                    },
                    {
                        "dimension": "Direct",
                        "new_users": "10",
                        "total_users": "10",
                        "sessions": "10",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "Organic Search",
                        "new_users": "12",
                        "total_users": "14",
                        "sessions": "16",
                        "bounce_rate": "0.375",
                        "average_session_duration": "227.5042755625",
                        "screenpageviews_per_session": "1.9375"
                    },
                    {
                        "dimension": "Organic Social",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    }
                ],
                "second_data_set": [
                    {
                        "dimension": "Paid Other",
                        "new_users": "66",
                        "total_users": "70",
                        "sessions": "78",
                        "bounce_rate": "0.28205128205128205",
                        "average_session_duration": "101.82979943589743",
                        "screenpageviews_per_session": "1.5897435897435896"
                    },
                    {
                        "dimension": "Direct",
                        "new_users": "28",
                        "total_users": "31",
                        "sessions": "33",
                        "bounce_rate": "0.5757575757575758",
                        "average_session_duration": "132.04673684848484",
                        "screenpageviews_per_session": "1.6363636363636365"
                    },
                    {
                        "dimension": "Organic Search",
                        "new_users": "15",
                        "total_users": "15",
                        "sessions": "17",
                        "bounce_rate": "0.23529411764705882",
                        "average_session_duration": "246.76104552941177",
                        "screenpageviews_per_session": "2.1764705882352939"
                    },
                    {
                        "dimension": "Organic Social",
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
                "type": "user_type",
                "data": [
                    {
                        "new_users": "76",
                        "total_users": "81"
                    }
                ]
            },
            {
                "type": "top_landing_pages",
                "data": [
                    {
                        "dimension": "/",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "18",
                        "total_users": "20",
                        "sessions": "20",
                        "bounce_rate": "0.6",
                        "average_session_duration": "68.4443926",
                        "screenpageviews_per_session": "1.2"
                    },
                    {
                        "dimension": "/services/screen-mesh-replacement/",
                        "dimension2": "Screen Mesh Replacement Service - Northridge Screen Services",
                        "new_users": "1",
                        "total_users": "2",
                        "sessions": "7",
                        "bounce_rate": "0.8571428571428571",
                        "average_session_duration": "12.634247428571427",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/services/door-screen-repair/?scid=2231462&kw=926107&pub_cr_id=596522195991&device=m&network=g&targetid=kwd-112891863&loc_interest_ms=&loc_physical_ms=9031161&tc=EAIaIQobChMI1euC48yD-AIVcMLCBB2LpglGEAAYAiAAEgKU_PD_BwE&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/products/swinging-screen-doors/",
                        "dimension2": "Swinging Screen Door Products - Northridge Screen Services",
                        "new_users": "1",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/services/door-screen-repair/?scid=2231462&pub_cr_id=596522195991&rl_sitelink=1907125&device=m&network=g&targetid=kwd-112891863&loc_interest_ms=&loc_physical_ms=9030953&tc=Cj0KCQjw1tGUBhDXARIsAIJx01mL8Dbb1HTX6-eVPqxddmnrK6AO3PsdY24CWUUj29MFQjA0pnzXCUMaAgvPEALw_wcB&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "dimension2": "Door Screen Repair Service - Northridge Screen Services",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0.7840265",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/services/window-screen-repair/?scid=2231462&kw=1908356&pub_cr_id=596522195901&device=m&network=g&targetid=kwd-26060426&loc_interest_ms=&loc_physical_ms=9030970&tc=Cj0KCQjw1tGUBhDXARIsAIJx01k09V_bujF5sEFTIfT8HFYILWvb87AGCOsqPPlpXUz8jKBdhkGPTBwaAifJEALw_wcB&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "dimension2": "Window Screen Repair Service - Northridge Screen Services",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "new_users": "0",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "163.4419075",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/?scid=2231460&kw=7376897&pub_cr_id=77378299623496&network=o&device=c&targetid=kwd-77378358683618&loc_interest_ms=&loc_physical_ms=79874&tc=e791f25cb8fc1abd768790cf62c16fc4&rl_key=b2b54ebcc6535aaa4606a0b5a9e75c34",
                        "dimension2": "Northridge Screen - Mobile Screen Service in Los Angeles",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "138.954958",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/?scid=2231462&cid=3718414&tc=Cj0KCQjw1tGUBhDXARIsAIJx01mTV-x8oQba-Y9GhPF9qj9E0xshO4n53GKDbn_1qc1pZrwrKJ01EFAaAgRlEALw_wcB&rl_key=46565de98920fd51419320748a0a2908&pub_cr_id=596522195991&rl_sitelink=1907126&dynamic_proxy=1&primary_serv=www.northridgescreen.com&device=m&network=g&targetid=kwd-112891863&loc_intere=",
                        "dimension2": "Areas Served - Northridge Screen Services",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "102.570863",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "/areas/?scid=2231462&pub_cr_id=596522195901&rl_sitelink=1907126&device=m&network=g&targetid=kwd-356817777259&loc_interest_ms=&loc_physical_ms=1014389&tc=CjwKCAjws8yUBhA1EiwAi_tpEeTCqlJpr2udZb-lrplbBUF5F1LsSn9NJpcJSOyTM0zGW58DImNjQhoCtiIQAvD_BwE&rl_key=a056aa03e42000b9ff0d2064c4fea4ab",
                        "dimension2": "Areas Served - Northridge Screen Services",
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
                "type": "top_source_medium",
                "data": [
                    {
                        "dimension": "reachlocal / cpc",
                        "new_users": "53",
                        "total_users": "57",
                        "sessions": "65",
                        "bounce_rate": "0.46153846153846156",
                        "average_session_duration": "92.679046815384609",
                        "screenpageviews_per_session": "1.5538461538461539"
                    },
                    {
                        "dimension": "google / organic",
                        "new_users": "7",
                        "total_users": "9",
                        "sessions": "11",
                        "bounce_rate": "0.36363636363636365",
                        "average_session_duration": "159.34560490909092",
                        "screenpageviews_per_session": "2.0909090909090908"
                    },
                    {
                        "dimension": "(direct) / (none)",
                        "new_users": "10",
                        "total_users": "10",
                        "sessions": "10",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "baidu / organic",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "1",
                        "average_session_duration": "0",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "yahoo / organic",
                        "new_users": "2",
                        "total_users": "2",
                        "sessions": "2",
                        "bounce_rate": "0",
                        "average_session_duration": "915.4564695",
                        "screenpageviews_per_session": "2.5"
                    },
                    {
                        "dimension": "bing / organic",
                        "new_users": "1",
                        "total_users": "1",
                        "sessions": "1",
                        "bounce_rate": "0",
                        "average_session_duration": "56.353816",
                        "screenpageviews_per_session": "1"
                    },
                    {
                        "dimension": "facebook.com / referral",
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
