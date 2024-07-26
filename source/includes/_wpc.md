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
|`channel[]`|Restrict results to one or more specific wpc channel. Allowed values are `search`, `display`, `social`, `chat`, `other`, and `shopping`|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_types[]`|Restrict results based on a campaign type|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval) or `none` to remove intervals entirely from the response.|
|`campaign_types[]`|No| Restricts results to campaigns of given type, valid types: `search`, `display`, `other`, `totaltrack_web`, `totaltrack_phone`, `totaltrack_web_phone`, `chat`, `xmedia`, `email`, `shopping`|

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

CHANGE THIS RESPONSE
>  Example Response

```javascript
{
    "api_name": "wpc",
    "api_run_date": "2023-04-17",
    "earliest_date_available": "2023-04-17",
    "start_date": "2023-04-17",
    "end_date": "2023-04-17",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "wpcs": [
            {
                "id": 89652,
                "campaign": {
                    "name": "Search Campaign (Demo)",
                    "id": 89650
                },
                "name": "Search National",
                "channel": "search",
                "geo_type": "National",
                "start_date": "2023-04-17",
                "end_date": null,
                "tactic": "Search Engine Marketing",
                "external_account_id": "12345",
                "external_account_name": "test",
                "display_name": null,
                "impressions": 1153,
                "clicks": 18,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "customer_revenue": 0,
                "ctr": 1.56,
                "cpc": 0.0,
                "cpl": 0,
                "cpm": 0,
                "roas": 0,
                "intervals": [
                    {
                        "start_date": "2023-04-17",
                        "impressions": 1153,
                        "clicks": 18,
                        "click_to_calls": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "leads": 0,
                        "spend": 0.0,
                        "customer_revenue": 0,
                        "ctr": 1.56,
                        "cpc": 0.0,
                        "cpl": 0,
                        "cpm": 0,
                        "roas": 0
                    }
                ]
            },
            {
                "id": 89657,
                "campaign": {
                    "name": "Totaltrack Phone Campaign (Demo)",
                    "id": 89655
                },
                "name": "Totaltrack_phone National",
                "channel": "other",
                "geo_type": "National",
                "start_date": "2023-04-17",
                "end_date": null,
                "tactic": "Campaign Tracking Only (TotalTrack)",
                "external_account_id": "12345",
                "external_account_name": "test",
                "display_name": null,
                "impressions": 1313,
                "clicks": 15,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "customer_revenue": 0,
                "ctr": 1.14,
                "cpc": 0.0,
                "cpl": 0,
                "cpm": 0,
                "roas": 0,
                "intervals": [
                    {
                        "start_date": "2023-04-17",
                        "impressions": 1313,
                        "clicks": 15,
                        "click_to_calls": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "leads": 0,
                        "spend": 0.0,
                        "customer_revenue": 0,
                        "ctr": 1.14,
                        "cpc": 0.0,
                        "cpl": 0,
                        "cpm": 0,
                        "roas": 0
                    }
                ]
            },
            {
                "id": 89687,
                "campaign": {
                    "name": "Chat Campaign (Demo)",
                    "id": 89683
                },
                "name": "Chat National",
                "channel": "chat",
                "geo_type": "National",
                "start_date": "2023-04-17",
                "end_date": null,
                "tactic": "Live Chat",
                "external_account_id": "12345",
                "external_account_name": "test",
                "display_name": null,
                "impressions": 1072,
                "clicks": 20,
                "click_to_calls": 0,
                "calls": 0,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 0,
                "chats": 0,
                "leads": 0,
                "spend": 0.0,
                "customer_revenue": 0,
                "ctr": 1.87,
                "cpc": 0.0,
                "cpl": 0,
                "cpm": 0,
                "roas": 0,
                "intervals": [
                    {
                        "start_date": "2023-04-17",
                        "impressions": 1072,
                        "clicks": 20,
                        "click_to_calls": 0,
                        "calls": 0,
                        "qualified_web_events": 0,
                        "non_qualified_web_events": 0,
                        "emails": 0,
                        "chats": 0,
                        "leads": 0,
                        "spend": 0.0,
                        "customer_revenue": 0,
                        "ctr": 1.87,
                        "cpc": 0.0,
                        "cpl": 0,
                        "cpm": 0,
                        "roas": 0
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
| display_name | String | The display name of the campaign|
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Campaign |
| calls | Float | Total Calls for Campaign |
| web_events | Int | Total Web Events for Campaign |
| qualified_web_events | Int | Total lead-generating CVT/Web Events for Campaign |
| emails | Float | Total Emails for Campaign |
| chats | Float | Total chat generated by paid traffic for Campaign |
| leads | Float | Total Leads for Campaign |
| spend | Float | Total Spend for Campaign |
| customer_revenue | Float | Total Customer Revenue for Campaign (shopping only) |
| roas | Float | Customer Revenue / Spend for Campaign (shopping only|
| ctr | Float | Click-through Rate for Campaign |
| cpc | Float | Cost Per Click for Campaign |
| cpm | Float | Cost Per Milli for Campaign |
|form_submissions_ct|Float|Total For Submission Click Through for Campaign|
|form_submissions_vt|Float|Total Form Submission View Through for Campaign|
|priority_page_views_ct|Float|Total Priority Page View Click Through for Campaign|
|priority_page_views_vt|Float|Total Priority Page View Through for Campaign|
|website_visits_vt|Float|Total Website Visits View Through for Campaign|
|walk_ins|Float|Total Walk-ins for Campaign|
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

CHANGE THIS RESPONSE
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
| cpm | Float | Cost Per Milli for Interval |
| customer_revenue | Float | Total Customer Revenue for Interval (shopping only) |
| roas | Float | Customer Revenue / Spend for Interval (shopping only|
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
