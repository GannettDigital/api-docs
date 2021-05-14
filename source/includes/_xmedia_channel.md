### **XMO Channel Metrics**
<a name="xmedia_channel"></a>

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /client_reports/xmedia_channel/[gmaid]?[query_params] |
#### API Name: xmedia_channel&nbsp;
### Summary&nbsp;
This is a new Xmedia channels API that can be used to retrieve metrics by channel for an Xmedia campaign. Channels can be Search, Social, Display, Chat and Other. This API can be used to see how each channel performed for an Xmedia Campaign.
### Usage&nbsp;
Use GET to retrieve channel metrics for an Xmedia campaign. Metrics can be returned for a GMAID for a specific date range determined by start_date and end_date. Metrics can be retrieved for a specified campaign, cycle or channel.
Metrics can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|`start_date`| yes |--|Restricts the results to those ocurring on or after this date|
|`end_date`| yes |--|Restricts the results to those ocurring on or before this date|
|`global_master_campaign_id[]`| no |--|Restrict results to one or more specific campaigns|
|`campaign_status[]`| no |running|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`| no |--|Restrict results to a single campaign cycle|
|`interval_size`| no | day | Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`| no | false |Set to true or false on whether to include cycle nesting.  Default value is false|
|`markup_type`| no |--|Only valid option is "percentage"|
|`markup_value`| no | 0 |When `markup_type` is "percentage" this is the percent markup|
|`channels[]`| no | All Channels |Specifies which channels to filter results by. Valid channels are `search`, `display`, `social`, `chat` and `other`|
### Examples:&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign cycle
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?campaign_cycle=USA_100"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true"
```

> Retrieve data for specific channels
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/xmedia_channel/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31&channels[]=display&channels[]=search"
```
> Response Description
### Base Report
| Field Name | Datatype | Description |
|---|---|---|
|`api_name`|String|Name of the API|
|`api_run_date`|String|Date report was run|
|`earliest_date_available`|String|Earliest Data is Available|
|`start_date`|String|Start date of report|
|`end_date`|String|End date of report|
|`time_zone`|String|Time Zone|
|`interval_size`|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|`currency`|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|`global_master_advertiser_id`|String|Global Master Advertiser ID|
|`advertiser_name`|String|Name of the Advertiser|
|`report_data`|Object|Report details|

### Report Data Object
| Field Name | Datatype | Description |
|---|---|---|
|`campaigns`|Object|Data for specified campaign|
|`totals`|Object|Data for Overall Totals|
|`totals_per_interval`|Object|Overall Totals Broken Down by Interval|
|`totals_by_channel`|Object|Overall Totals Broken Down by Channel|
|`totals_by_publisher`|Object|Overall Totals Broken Down by Publisher|

### Campaigns Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| name | String | No | Campaign Name |
| global_master_campaign_id | String | No | Unique Identifier for Campaign |
| organization | String | No | Either reachlocal or gannett |
| start_date | String | No | Campaign Start Date |
| end_date | String | Yes | Campaign End Date |
| type | String | No | Type of Campaign |
| status | String | No | Status of Campaign |
| goals | Array | No | Array of Goals |
| cycles | Cycle[] | No | Array of Cycles |
| impressions | Int | No | Total Impressions for Campaign |
| clicks | Float | No | Total Clicks for Campaign |
| click_to_calls | Int | No | Total Click-to-Calls for Campaign. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Campaign | A non-lead generating CVT/Web Event
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Campaign |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Campaign |
| emails | Int | No | Total Emails for Campaign |
| chats | Int | No | Total Chats for Campaign |
| leads | Int | No | Total Leads for Campaign (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for Campaign |
| ctr | Float | No | Click-through Rate for Campaign |
| cpc | Float | No | Cost Per Click for Campaign |
| cpl | Float | No | Cost Per Lead for Campaign |

### Cycles Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| campaign_cycle | String | No | Unique Identifier for Cycle |
| start_date | String | No | Cycle Start Date |
| end_date | String | Yes | Cycle End Date |
| impressions | Int | No | Total Impressions for Cycle |
| clicks | Float | No | Total Clicks for Cycle |
| click_to_calls | Int | No | Total Click-to-Calls for Cycle. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Cycle |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Cycle |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Cycle |
| emails | Int | No | Total Emails for Cycle |
| chats | Int | No | Total Chats for Cycle |
| leads | Int | No | Total Leads for Cycle (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for Cycle |
| ctr | Float | No | Click-through Rate for Cycle |
| cpc | Float | No | Cost Per Click for Cycle |
| wpcs | WPC[] | No | Array of WPCs |
| cpl | Float | No | Cost Per Lead for Cycle |

### WPCs (Web Publisher Campaign) Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| id | String | No | Unique Identifier for WPC |
| name | String | No | Name of WPC |
| channel | String | No | Channel for WPC |
| geo_type | String | No | GeoType for WPC |
| start_date | String | No | WPC Start Date |
| end_date | String | Yes | WPC End Date |
| tactic | String | No | Tactic for WPC (Offer Name) |
| external_account_id | String | No | External Account ID for WPC |
| external_account_name | String | No | External Account Name for WPC |
| impressions | Int | No | Total Impressions for WPC |
| clicks | Float | No | Total Clicks for WPC |
| click_to_calls | Int | No | Total Click-to-Calls for WPC. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for WPC |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for WPC |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for WPC |
| emails | Int | No | Total Emails for WPC |
| chats | Int | No | Total Chats for WPC |
| leads | Int | No | Total Leads for WPC (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for WPC |
| ctr | Float | No | Click-through Rate for WPC |
| cpc | Float | No | Cost Per Click for WPC |
| cpl | Float | No | Cost Per Lead for WPC |
| intervals | Interval[] | No | Array of Intervals |

### Intervals Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| start_date | String | No | Start Date for Interval |
| impressions | Int | No | Total Impressions for Interval |
| clicks | Float | No | Total Clicks for Interval |
| click_to_calls | Int | No | Total Click-to-Calls for Interval. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Interval |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Interval |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Interval |
| emails | Int | No | Total Emails for Interval |
| chats | Int | No | Total Chats for Interval |
| leads | Int | No | Total Leads for Interval (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for Interval |
| ctr | Float | No | Click-through Rate for Interval |
| cpc | Float | No | Cost Per Click for Interval |
| cpl | Float | No | Cost Per Lead for Interval |

### Totals Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| impressions | Int | No | Total Impressions |
| clicks | Float | No | Total Clicks |
| click_to_calls | Int | No | Total Click-to-Calls. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events Web Events |
| emails | Float | No | Total Emails |
| chats | Float | No | Total Chats |
| leads | Float | No | Total Leads (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend |
| ctr | Float | No | Overall Click-through Rate |
| cpc | Float | No | Overall Cost Per Click |
| cpl | Float | No | Overall Cost Per Lead |

### Totals Per Interval Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| start_date | String | No | Campaign Start Date |
| impressions | Int | No | Total Impressions for Interval |
| clicks | Float | No | Total Clicks for Interval |
| click_to_calls | Int | No | Total Click-to-Calls for Interval. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Interval |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Interval |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Interval |
| emails | Int | No | Total Emails for Interval |
| chats | Int | No | Total Chats for Interval |
| leads | Int | No | Total Leads for Interval (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for Interval |
| ctr | Float | No | Click-through Rate for Interval |
| cpc | Float | No | Cost Per Click for Interval |
| cpl | Float | No | Cost Per Lead for Interval |

### Totals by Channel Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| channel | String | No | Channel Name |
| impressions | Int | No | Total Impressions for Channel |
| clicks | Float | No | Total Clicks for Channel |
| click_to_calls | Int | No | Total Click-to-Calls for Channel. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Channel |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Channel |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Channel |
| emails | Int | No | Total Emails for Channel |
| chats | Int | No | Total Chats for Channel |
| leads | Int | No | Total Leads for Channel (calls + email + chat + qualified web events) |
| spend | Float | No | Total Spend for Channel |
| ctr | Float | No | Click-through Rate for Channel |
| cpc | Float | No | Cost Per Click for Channel |
| cpl | Float | No | Cost Per Lead for Channel |

### Totals by Publisher Object

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| publisher | String | No | Publisher Name |
| impressions | Int | No | Total Impressions for Publisher |
| clicks | Float | No | Total Clicks for Publisher |
| click_to_calls | Int | No | Total Click-to-Calls for Publisher. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | No | Total Calls for Publisher |
| qualified_web_events | Int | No | Total Lead Generating CVT/Web Events for Publisher |
| non_qualified_web_events | Int | No | Total Non-Lead Generating CVT/Web Events for Publisher |
| emails | Int | No | Total Emails for Publisher |
| chats | Int | No | Total Chats for Publisher |
| leads | Int | No | Total Leads for Publisher |
| spend | Float | No | Total Spend for Publisher |
| ctr | Float | No | Click-through Rate for Publisher |
| cpc | Float | No | Cost Per Click for Publisher |
| cpl | Float | No | Cost Per Lead for Publisher |

##### Example Response with include_cycles=true

```javascript
{
    "api_name": "xmedia_channel",
    "api_run_date": "2020-09-24",
    "earliest_date_available": "2020-09-10",
    "start_date": "2020-09-15",
    "end_date": "2020-09-15",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
        "campaigns": [
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_24638",
                "organization": "reachlocal",
                "start_date": "2020-09-10",
                "end_date": null,
                "type": "xmedia",
                "status": "running",
                "goals": [
                    {
                        "goal_type": "CPL"
                    },
                    {
                        "goal_type": "Contacts (Dynamic Ads - Automotive)"
                    }
                ],
                "impressions": 1069,
                "clicks": 17,
                "click_to_calls": 10,
                "calls": 10,
                "qualified_web_events": 2,
                "non_qualified_web_events": 2,
                "emails": 8,
                "chats": 8,
                "leads": 28,
                "spend": 25.0,
                "ctr": 1.59,
                "cpc": 1.47,
                "cpl": 0.89,
                "cycles": [
                    {
                        "campaign_cycle": "TEST_24639",
                        "start_date": "2020-09-10",
                        "end_date": null,
                        "impressions": 1069,
                        "clicks": 17,
                        "click_to_calls": 10,
                        "calls": 10,
                        "qualified_web_events": 2,
                        "non_qualified_web_events": 2,
                        "emails": 8,
                        "chats": 8,
                        "leads": 28,
                        "spend": 25.0,
                        "ctr": 1.59,
                        "cpc": 1.47,
                        "cpl": 0.89,
                        "wpcs": [
                            {
                                "id": 24640,
                                "name": "Search National",
                                "channel": "search",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 213,
                                "clicks": 3,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 0,
                                "non_qualified_web_events": 0,
                                "emails": 1,
                                "chats": 1,
                                "leads": 4,
                                "spend": 5.0,
                                "ctr": 1.41,
                                "cpc": 1.67,
                                "cpl": 1.25,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 213,
                                        "clicks": 3,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 0,
                                        "non_qualified_web_events": 0,
                                        "emails": 1,
                                        "chats": 1,
                                        "leads": 4,
                                        "spend": 5.0,
                                        "ctr": 1.41,
                                        "cpc": 1.67,
                                        "cpl": 1.25
                                    }
                                ]
                            },
                            {
                                "id": 24641,
                                "name": "Display National",
                                "channel": "display",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 213,
                                "clicks": 3,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 0,
                                "non_qualified_web_events": 0,
                                "emails": 1,
                                "chats": 1,
                                "leads": 4,
                                "spend": 5.0,
                                "ctr": 1.41,
                                "cpc": 1.67,
                                "cpl": 1.25,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 213,
                                        "clicks": 3,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 0,
                                        "non_qualified_web_events": 0,
                                        "emails": 1,
                                        "chats": 1,
                                        "leads": 4,
                                        "spend": 5.0,
                                        "ctr": 1.41,
                                        "cpc": 1.67,
                                        "cpl": 1.25
                                    }
                                ]
                            },
                            {
                                "id": 24643,
                                "name": "YouTube National",
                                "channel": "other",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 213,
                                "clicks": 3,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 0,
                                "non_qualified_web_events": 0,
                                "emails": 1,
                                "chats": 1,
                                "leads": 4,
                                "spend": 5.0,
                                "ctr": 1.41,
                                "cpc": 1.67,
                                "cpl": 1.25,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 213,
                                        "clicks": 3,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 0,
                                        "non_qualified_web_events": 0,
                                        "emails": 1,
                                        "chats": 1,
                                        "leads": 4,
                                        "spend": 5.0,
                                        "ctr": 1.41,
                                        "cpc": 1.67,
                                        "cpl": 1.25
                                    }
                                ]
                            },
                            {
                                "id": 24644,
                                "name": "Social National",
                                "channel": "social",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 213,
                                "clicks": 3,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 0,
                                "non_qualified_web_events": 0,
                                "emails": 1,
                                "chats": 1,
                                "leads": 4,
                                "spend": 5.0,
                                "ctr": 1.41,
                                "cpc": 1.67,
                                "cpl": 1.25,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 213,
                                        "clicks": 3,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 0,
                                        "non_qualified_web_events": 0,
                                        "emails": 1,
                                        "chats": 1,
                                        "leads": 4,
                                        "spend": 5.0,
                                        "ctr": 1.41,
                                        "cpc": 1.67,
                                        "cpl": 1.25
                                    }
                                ]
                            },
                            {
                                "id": 24645,
                                "name": "Chat National",
                                "channel": "chat",
                                "geo_type": "National",
                                "start_date": "2020-09-10",
                                "end_date": null,
                                "tactic": "Omnichannel - Smart",
                                "external_account_id": "12345",
                                "external_account_name": "test",
                                "impressions": 217,
                                "clicks": 5,
                                "click_to_calls": 2,
                                "calls": 2,
                                "qualified_web_events": 2,
                                "non_qualified_web_events": 2,
                                "emails": 4,
                                "chats": 4,
                                "leads": 12,
                                "spend": 5.0,
                                "ctr": 2.3,
                                "cpc": 1.0,
                                "cpl": 0.42,
                                "intervals": [
                                    {
                                        "start_date": "2020-09-15",
                                        "impressions": 217,
                                        "clicks": 5,
                                        "click_to_calls": 2,
                                        "calls": 2,
                                        "qualified_web_events": 2,
                                        "non_qualified_web_events": 2,
                                        "emails": 4,
                                        "chats": 4,
                                        "leads": 12,
                                        "spend": 5.0,
                                        "ctr": 2.3,
                                        "cpc": 1.0,
                                        "cpl": 0.42
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 1069,
            "clicks": 17,
            "click_to_calls": 10,
            "calls": 10,
            "qualified_web_events": 2,
            "non_qualified_web_events": 2,
            "emails": 8,
            "chats": 8,
            "leads": 28,
            "spend": 25.0,
            "ctr": 1.59,
            "cpc": 1.47,
            "cpl": 0.89
        },
        "totals_per_interval": [
            {
                "start_date": "2020-09-15",
                "impressions": 1069,
                "clicks": 17,
                "click_to_calls": 10,
                "calls": 10,
                "qualified_web_events": 2,
                "non_qualified_web_events": 2,
                "emails": 8,
                "chats": 8,
                "leads": 28,
                "spend": 25.0,
                "ctr": 1.59,
                "cpc": 1.47,
                "cpl": 0.89
            }
        ],
        "totals_by_channel": [
            {
                "channel": "search",
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "channel": "display",
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "channel": "other",
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "channel": "social",
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "channel": "chat",
                "impressions": 217,
                "clicks": 5,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 2,
                "non_qualified_web_events": 2,
                "emails": 4,
                "chats": 4,
                "leads": 12,
                "spend": 5.0,
                "ctr": 2.3,
                "cpc": 1.0,
                "cpl": 0.42
            }
        ],
        "totals_by_publisher": [
            {
                "publisher": "Google",
                "publisher_id": 1,
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "publisher": "Simpli.fi API",
                "publisher_id": 49,
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "publisher": "Youtube - Google",
                "publisher_id": 65,
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "publisher": "Facebook",
                "publisher_id": 38,
                "impressions": 213,
                "clicks": 3,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 0,
                "non_qualified_web_events": 0,
                "emails": 1,
                "chats": 1,
                "leads": 4,
                "spend": 5.0,
                "ctr": 1.41,
                "cpc": 1.67,
                "cpl": 1.25
            },
            {
                "publisher": "Apex Chat - VendoMax Inc.",
                "publisher_id": 1400,
                "impressions": 217,
                "clicks": 5,
                "click_to_calls": 2,
                "calls": 2,
                "qualified_web_events": 2,
                "non_qualified_web_events": 2,
                "emails": 4,
                "chats": 4,
                "leads": 12,
                "spend": 5.0,
                "ctr": 2.3,
                "cpc": 1.0,
                "cpl": 0.42
            }
        ]
    }
}
```
