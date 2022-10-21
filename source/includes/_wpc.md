### **WPC Metrics**
<a name="wpc_metrics"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/wpc/[gmaid]?[query_params] |

Use GET to retrieve wpc performance metrics. 

The data returned will include impressions, leads, clicks, calls, qualified_web_events, web_events, emails, chats and totals of the leads.


### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function|
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns.|
|`web_publisher_campaign_id[]`|Restrict results to one or more specific campaigns for a web publisher.|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_types[]`|Restrict results based on a campaign type|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?web_publisher_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign type
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?campaign_types[]=search"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/wpc/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

>  Example Response

```javascript
{
    "api_name": "wpc",
    "api_run_date": "2022-08-05",
    "earliest_date_available": "2019-08-16",
    "start_date": "2020-09-11",
    "end_date": "2020-09-11",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "USA_1",
    "advertiser_name": "Advertiser 1",
    "report_data": {
        "wpcs": [
            {
                "id": 12345,
                "campaign": {
                    "name": "first_campaign",
                    "id": 123
                },
                "name": "Name",
                "channel": "search",
                "geo_type": "National",
                "start_date": "2021-01-11",
                "end_date": "2021-01-15",
                "impressions": 2,
                "clicks": 0,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "ctr": 0.0,
                "cpc": 0,
                "cpl": 0,
                "form_submissions_ct": 410,
                "form_submissions_vt": 417,
                "priority_page_views_ct": 213,
                "priority_page_views_vt": 186,
                "website_visits_vt": 192,
                "walk_ins": 0,
                "video_full_screen": 197,
                "video_mute": 195,
                "video_unmute": 188,
                "video_pause": 206,
                "video_resume": 190,
                "video_views": 186,
                "video_played_to_25_pct": 195,
                "video_played_to_50_pct": 183,
                "video_played_to_75_pct": 191,
                "completed_views": 218,
                "video_complete_rate": 117.2,
                "view_thru_rate": 0.91,
                "cost_per_view": 1.0,
                "intervals": [
                    {
                        "start_date": "2020-09-11",
                        "impressions": 2,
                        "clicks": 0,
                        "click_to_calls": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "leads": 0,
                        "spend": 0.0,
                        "ctr": 0.0,
                        "cpc": 0,
                        "cpl": 0,
                        "form_submissions_ct": 24,
                        "form_submissions_vt": 23,
                        "priority_page_views_ct": 10,
                        "priority_page_views_vt": 10,
                        "website_visits_vt": 9,
                        "walk_ins": 0,
                        "video_full_screen": 6,
                        "video_mute": 6,
                        "video_unmute": 14,
                        "video_pause": 7,
                        "video_resume": 5,
                        "video_views": 13,
                        "video_played_to_25_pct": 12,
                        "video_played_to_50_pct": 16,
                        "video_played_to_75_pct": 6,
                        "completed_views": 16,
                        "video_complete_rate": 123.08,
                        "view_thru_rate": 1.26,
                        "cost_per_view": 1.0
                    }
                ]
            },
            {
                "id": 32142,
                "campaign": {
                    "name": "second_campaign",
                    "id": 1234
                },
                "name": "Google City",
                "channel": "search",
                "geo_type": "City",
                "start_date": "2021-01-11",
                "end_date": "2021-01-15",
                "impressions": 206,
                "clicks": 7,
                "click_to_calls": 2,
                "calls": 4,
                "qualified_web_events": 0,
                "non_qualified_web_events": 4,
                "emails": 0,
                "chats": 0,
                "leads": 4,
                "spend": 28.74,
                "ctr": 3.4,
                "cpc": 4.11,
                "cpl": 7.19,
                "form_submissions_ct": 410,
                "form_submissions_vt": 417,
                "priority_page_views_ct": 213,
                "priority_page_views_vt": 186,
                "website_visits_vt": 192,
                "walk_ins": 0,
                "video_full_screen": 197,
                "video_mute": 195,
                "video_unmute": 188,
                "video_pause": 206,
                "video_resume": 190,
                "video_views": 186,
                "video_played_to_25_pct": 195,
                "video_played_to_50_pct": 183,
                "video_played_to_75_pct": 191,
                "completed_views": 218,
                "video_complete_rate": 117.2,
                "view_thru_rate": 0.91,
                "cost_per_view": 1.0,
                "intervals": [
                    {
                        "start_date": "2020-09-11",
                        "impressions": 206,
                        "clicks": 7,
                        "click_to_calls": 2,
                        "calls": 4,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 4,
                        "emails": 0,
                        "chats": 0,
                        "leads": 4,
                        "spend": 28.74,
                        "ctr": 3.4,
                        "cpc": 4.11,
                        "cpl": 7.19,
                        "form_submissions_ct": 24,
                        "form_submissions_vt": 23,
                        "priority_page_views_ct": 10,
                        "priority_page_views_vt": 10,
                        "website_visits_vt": 9,
                        "walk_ins": 0,
                        "video_full_screen": 6,
                        "video_mute": 6,
                        "video_unmute": 14,
                        "video_pause": 7,
                        "video_resume": 5,
                        "video_views": 13,
                        "video_played_to_25_pct": 12,
                        "video_played_to_50_pct": 16,
                        "video_played_to_75_pct": 6,
                        "completed_views": 16,
                        "video_complete_rate": 123.08,
                        "view_thru_rate": 1.26,
                        "cost_per_view": 1.0
                    }
                ]
            }
        ]
    }
}
```


**wpcs**

| Field Name | Datatype | Description |
|---|---|---|
| name | String | WPC Name |
| start_date | String | WPC Start Date |
| end_date | String | WPC End Date |
| channel | String | Channel of WPC |
| geo_type | String | Geo Type of WPC |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int | Total Web Events for Interval |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total chat generated by paid traffic for Interval |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |
|form_submissions_ct|Float|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|Total Form Submission View Through for Campaign|
|priority_page_views_ct|Float|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|Total Priority Page View Through for Campaign|
|website_visits_vt|Float|Total Website Visits View Through for Campaign|
|walk_ins|Float|Total Walk-ins for Interval|
|video_full_screen|Float|Number of Full-Screen Video Views <br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Total Completed Views for Campaign|
|video_complete_rate|Float|Total Video Completion Rate|
|view_thru_rate|Float|Total View-Through Rate|
|cost_per_view|Float|Cost per View|

**Intervals Array**

| Field Name | Datatype | Description |
|---|---|---|
| start_date | String| Campaign Start Date |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Interval |
| calls | Float | Total Calls for Interval |
| web_events | Int | Total Web Events for Interval |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Interval |
| emails | Float | Total Emails for Interval |
| chats | Float | Total chat generated by paid traffic for Interval |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |
|form_submissions_ct|Float|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|Total Form Submission View Through for Campaign|
|priority_page_views_ct|Float|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|Total Priority Page View Through for Campaign|
|website_visits_vt|Float|Total Website Visits View Through for Campaign|
|walk_ins|Float|Total Walk-ins for Interval|
|video_full_screen|Float|Number of Full-Screen Video Views <br>**The field is nullable**|
|video_mute|Float|Number of Muted Video Views<br>**The field is nullable**|
|video_unmute|Float|Number of Unmuted Video Views<br>**The field is nullable**|
|video_pause|Float|Number of Paused Video Views<br>**The field is nullable**|
|video_resume|Float|Number of Resumed Video Views<br>**The field is nullable**|
|video_views|Float|Number of Video Views|
|video_played_to_25_pct|Float|Number of Video Views Played to 25 percent<br>**The field is nullable**|
|video_played_to_50_pct|Float|Number of Video Views Played to 50 percent<br>**The field is nullable**|
|video_played_to_75_pct|Float|Number of Video Views Played to 75 percent<br>**The field is nullable**|
|completed_views|Float|Total Completed Views for Campaign|
|video_complete_rate|Float|Total Video Completion Rate|
|view_thru_rate|Float|Total View-Through Rate|
|cost_per_view|Float|Cost per View|
