### **XMO Channel Metrics**
<a name="xmedia_channel"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/xmedia_channel/[gmaid]?[query_params] |


Use GET to retrieve campaign performance metrics by channel (search, social etc.) for the Cross Media Optimization (XMO) campaigns. This API can be used to see how each channel performed for an Xmedia Campaign.



### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function|
|---|---|
|`start_date`| Restricts the results to those ocurring on or after this date|
|`end_date`| Restricts the results to those ocurring on or before this date|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`campaign_status[]`| Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|
|`campaign_cycle`| Restrict results to a single campaign cycle|
|`interval_size`| | Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`include_cycles`| |Set to true or false on whether to include cycle nesting.  Default value is false|
|`markup_type`| |Only valid option is "percentage"|
|`markup_value`| |When `markup_type` is "percentage" this is the percent markup|
|`channels[]`| |Specifies which channels to filter results by. Valid channels are `search`, `display`, `social`, `chat` and `other`|

### Response Data Details

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

**Report Data Object**

| Field Name | Datatype | Description |
|---|---|---|
|`campaigns`|Object|Data for specified campaign|
|`totals`|Object|Data for Overall Totals|
|`totals_per_interval`|Object|Overall Totals Broken Down by Interval|
|`totals_by_channel`|Object|Overall Totals Broken Down by Channel|
|`totals_by_publisher`|Object|Overall Totals Broken Down by Publisher|

**Campaigns**

| Field Name | Datatype  Description |
|---|---|---|
| name | String | Campaign Name |
| global_master_campaign_id | String | Unique Identifier for Campaign |
| organization | String | Either reachlocal or gannett |
| start_date | String | Campaign Start Date |
| end_date | String | Campaign End Date |
| type | String |  Type of Campaign |
| status | String |  Status of Campaign |
| goals | Array |  Array of Goals |
| cycles | Cycle[] | Array of Cycles |
| impressions | Int | Total Impressions for Campaign |
| clicks | Float | Total Clicks for Campaign |
| click_to_calls | Int | Total Click-to-Calls for Campaign. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int |Total Calls for Campaign | A non-lead generating CVT/Web Event
| qualified_web_events | Int | Total Lead Generating CVT/Web Events for Campaign |
| non_qualified_web_events | Int  | Total Non-Lead Generating CVT/Web Events for Campaign |
| emails | Int | Total Emails for Campaign |
| chats | Int  | Total Chats for Campaign |
| leads | Int | Total Leads for Campaign (calls + email + chat + qualified web events) |
| spend | Float | Total Spend for Campaign |
| ctr | Float | Click-through Rate for Campaign |
| cpc | Float | Cost Per Click for Campaign |
| cpl | Float | Cost Per Lead for Campaign |

### Cycles Array

| Field Name | Datatype | Description |
|---|---|---|
| campaign_cycle | String | Unique Identifier for Cycle |
| start_date | String  | Cycle Start Date |
| end_date | String | Cycle End Date |
| impressions | Int | Total Impressions for Cycle |
| clicks | Float | Total Clicks for Cycle |
| click_to_calls | Int | Total Click-to-Calls for Cycle. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | Total Calls for Cycle |
| qualified_web_events | Int  | Total Lead Generating CVT/Web Events for Cycle |
| non_qualified_web_events | Int | Total Non-Lead Generating CVT/Web Events for Cycle |
| emails | Int | Total Emails for Cycle |
| chats | Int | Total Chats for Cycle |
| leads | Int | Total Leads for Cycle (calls + email + chat + qualified web events) |
| spend | Float  | Total Spend for Cycle |
| ctr | Float | Click-through Rate for Cycle |
| cpc | Float | Cost Per Click for Cycle |
| wpcs | WPC[] | Array of WPCs |
| cpl | Float | Cost Per Lead for Cycle |

### WPCs (Web Publisher Campaign) Object

| Field Name | Datatype | Description |
|---|---|---|
| id | String | Unique Identifier for WPC |
| name | String  | Name of WPC |
| channel | String | Channel for WPC |
| geo_type | String | GeoType for WPC |
| start_date | String | WPC Start Date |
| end_date | String  | WPC End Date |
| tactic | String  | Tactic for WPC (Offer Name) |
| external_account_id | String | External Account ID for WPC |
| external_account_name | String | External Account Name for WPC |
| impressions | Int  | Total Impressions for WPC |
| clicks | Float | Total Clicks for WPC |
| click_to_calls | Int | Total Click-to-Calls for WPC. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | Total Calls for WPC |
| qualified_web_events | Int | Total Lead Generating CVT/Web Events for WPC |
| non_qualified_web_events | Int  | Total Non-Lead Generating CVT/Web Events for WPC |
| emails | Int | Total Emails for WPC |
| chats | Int | Total Chats for WPC |
| leads | Int | Total Leads for WPC (calls + email + chat + qualified web events) |
| spend | Float  | Total Spend for WPC |
| ctr | Float | Click-through Rate for WPC |
| cpc | Float | Cost Per Click for WPC |
| cpl | Float  | Cost Per Lead for WPC |
| intervals | Interval[] | Array of Intervals |

**Intervals Array**

| Field Name | Datatype | Description |
|---|---|---|
| start_date | String | Start Date for Interval |
| impressions | Int | Total Impressions for Interval |
| clicks | Float | Total Clicks for Interval |
| click_to_calls | Int  | Total Click-to-Calls for Interval. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | Total Calls for Interval |
| qualified_web_events | Int | Total Lead Generating CVT/Web Events for Interval |
| non_qualified_web_events | Int  | Total Non-Lead Generating CVT/Web Events for Interval |
| emails | Int  | Total Emails for Interval |
| chats | Int | Total Chats for Interval |
| leads | Int | Total Leads for Interval (calls + email + chat + qualified web events) |
| spend | Float | Total Spend for Interval |
| ctr | Float| Click-through Rate for Interval |
| cpc | Float  | Cost Per Click for Interval |
| cpl | Float | Cost Per Lead for Interval |

**Totals Object**

| Field Name | Datatype  | Description |
|---|---|---|
| impressions | Int | Total Impressions |
| clicks | Float | Total Clicks |
| click_to_calls | Int | Total Click-to-Calls. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int | Total Calls |
| qualified_web_events | Int | Total Lead Generating CVT/Web Events |
| non_qualified_web_events | Int | Total Non-Lead Generating CVT/Web Events Web Events |
| emails | Float | Total Emails |
| chats | Float | Total Chats |
| leads | Float  | Total Leads (calls + email + chat + qualified web events) |
| spend | Float  | Total Spend |
| ctr | Float  | Overall Click-through Rate |
| cpc | Float | Overall Cost Per Click |
| cpl | Float | Overall Cost Per Lead |

**Totals by Interval Object**

| Field Name | Datatype | Description |
|---|---|---|
| start_date | String | Campaign Start Date |
| impressions | Int  | Total Impressions for Interval |
| clicks | Float | Total Clicks for Interval |
| click_to_calls | Int | Total Click-to-Calls for Interval. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int  | Total Calls for Interval |
| qualified_web_events | Int  | Total Lead Generating CVT/Web Events for Interval |
| non_qualified_web_events | Int | Total Non-Lead Generating CVT/Web Events for Interval |
| emails | Int | Total Emails for Interval |
| chats | Int | Total Chats for Interval |
| leads | Int | Total Leads for Interval (calls + email + chat + qualified web events) |
| spend | Float | Total Spend for Interval |
| ctr | Float | Click-through Rate for Interval |
| cpc | Float | Cost Per Click for Interval |
| cpl | Float | Cost Per Lead for Interval |

**Totals Per channel Object**

| Field Name | Datatype | Description |
|---|---|---|
| channel | String | Channel Name |
| impressions | Int | Total Impressions for Channel |
| clicks | Float  | Total Clicks for Channel |
| click_to_calls | Int | Total Click-to-Calls for Channel. This is the count of clicks associated with a phone call.  Calls to the same campaign from the same number are counted as one click_to_call.  |
| calls | Int  | Total Calls for Channel |
| qualified_web_events | Int  | Total Lead Generating CVT/Web Events for Channel |
| non_qualified_web_events | Int  | Total Non-Lead Generating CVT/Web Events for Channel |
| emails | Int | Total Emails for Channel |
| chats | Int | Total Chats for Channel |
| leads | Int |  Total Leads for Channel (calls + email + chat + qualified web events) |
| spend | Float | Total Spend for Channel |
| ctr | Float | Click-through Rate for Channel |
| cpc | Float  | Cost Per Click for Channel |
| cpl | Float  | Cost Per Lead for Channel |

**Totals Per Publisher Object**


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

> Example Response with include_cycles=true

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
