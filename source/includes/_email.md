### **Email**
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/email/[gmaid]/campaigns?[query_params] |
| GET | /client_reports/email/[gmaid]/campaigns/[global_master_campaign_id] |


This is an Email Metrics API that can be used by customers that have Email campaigns.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Default|Description|
|---|---|---|---|
|start_date|When GMCID not present|--|Restricts the results to those occurring on or after this date|
|end_date|When GMCID not present|--|Restricts the results to those occurring on or before this date|
|page|No|1|Determines the page to return|
|page_size|No|25|Determines how many campaigns are returned per page|
|sort_by|No|broadcast_date|Determines what attribute to sort by. Possible values: broadcast_date, quantity, opens, opens_pc, views, views_pc, clicks, clicks_pc, ctor, or ctvr  |
|sort_dir|No|desc|Determines what direction to sort results by.  Possible values: asc or desc|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/email/TEST_1/campaigns?start_date=2020-10-01&end_date=2020-10-10
```

> Retrieve data for a specific campaign

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/email/TEST_1/campaigns/TEST_15231
```

> Example Response Index

```json
{
    "api_name": "email",
    "api_run_date": "2020-11-02",
    "earliest_date_available": "2020-10-15",
    "start_date": "2020-10-01",
    "end_date": "2020-10-16",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "campaigns": [
        {
            "global_master_campaign_id": "TEST_15231",
            "name": "Email Campaign (Demo)",
            "type": "email",
            "status": "running",
            "goals": [],
            "external_campaign_id": 15231,
            "external_campaign_name": "Demo Campaign Name",
            "broadcast_date": "2020-10-15",
            "quantity": 2911,
            "opens": 1150,
            "opens_pc": 0.0,
            "views": 281,
            "views_pc": 0.0,
            "clicks": 570,
            "clicks_pc": 0.0,
            "ctor": 0.1843,
            "ctvr": 0.1843,
            "from_line": "Demo From Line",
            "subject_line": "Demo Subject"
        }
    ],
    "page": 1,
    "page_size": 25,
    "total_pages": 1
}
```

> Example Response for GMCID Show

```json
{
    "api_name": "email",
    "api_run_date": "2020-11-02",
    "earliest_date_available": "2020-10-15",
    "start_date": null,
    "end_date": null,
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "campaigns": {
        "global_master_campaign_id": "TEST_15231",
        "name": "Email Campaign (Demo)",
        "type": "email",
        "status": "running",
        "goals": [],
        "external_campaign_id": 15231,
        "external_campaign_name": "Demo Campaign Name",
        "broadcast_date": "2020-10-15",
        "quantity": 2911,
        "opens": 1150,
        "opens_pc": 0.0,
        "views": 281,
        "views_pc": 0.0,
        "clicks": 570,
        "clicks_pc": 0.0,
        "ctor": 0.1843,
        "ctvr": 0.1843,
        "from_line": "Demo From Line",
        "subject_line": "Demo Subject",
        "devices": {
            "desktop": 285,
            "mobile": 285
        },
        "browsers": {
            "ie": 114,
            "chrome": 114,
            "firefox": 114,
            "safari": 114,
            "other": 114
        },
        "links": [
            {
                "external_campaign_id": 15231,
                "campaign_id": 15231,
                "platform_id": 7,
                "index": 1,
                "clicks": 190,
                "clicks_pc": 0.0,
                "url": "demo_url.com",
                "created_at": "2020-10-30T18:57:49.000Z",
                "updated_at": "2020-10-30T18:57:49.000Z"
            },
            {
                "external_campaign_id": 15231,
                "campaign_id": 15231,
                "platform_id": 7,
                "index": 2,
                "clicks": 190,
                "clicks_pc": 0.0,
                "url": "demo_url.com",
                "created_at": "2020-10-30T18:57:49.000Z",
                "updated_at": "2020-10-30T18:57:49.000Z"
            },
            {
                "external_campaign_id": 15231,
                "campaign_id": 15231,
                "platform_id": 7,
                "index": 3,
                "clicks": 190,
                "clicks_pc": 0.0,
                "url": "demo_url.com",
                "created_at": "2020-10-30T18:57:49.000Z",
                "updated_at": "2020-10-30T18:57:49.000Z"
            }
        ],
        "pdf_base64": "base64 pdf"
    }
}
```

|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|global_master_advertiser_id|String|Identifier for Advertiser|
|advertiser_name|String|Name of Advertiser|
|campaigns|Campaign[]|Arrays of Campaigns|

**Campaigns**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|Unique Campaign Identifier.|
|name|String|Campaign Name|
|type|String|Campaign Type|
|status|String|Campaign Status|
|goals|Goal[]|No|Array of Goals|
|external_campaign_id|String|Unique Identifier for External Campaign|
|external_campaign_name|String|External Campaign Name|
|broadcast_date|String|Date Email was pushed out|
|quantity|Int|Number of emails sent|
|opens|Int|Number of emails opened|
|opens_pc|Float|Percent of emails opened|
|views|Int|Number of emails viewed|
|views_pc|Float|Percent of emails viewed|
|clicks|Int|Number of emails clicked|
|clicks_pc|Float|Percent of emails clicked|
|ctor|Float|Click-through Rate|
|ctvr|Float|CTVR|
|from_line|Object|From Line for email|
|subject_line|Object|Subject line for email|
|devices|Device[]|Array of Device|
|browsers|Broswer[]|Array of Broswer|
|links|Link[]|Array of Link|
|pdf_base64|String|Base64 encoded pdf of report|

**Goals**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
| goal_type_id | Int | No | goal type id |
| goal_type | String | No | goal type name |

**Link**

|Field Name|Datatype|Description|
|---|---|---|
|index|Int|Index of Link|
|clicks|Int|Number of clicks for Link|
|clicks_pc|Float|Percent of Link clicks vs quantity|
|link_pc|Float|Percent of Link clicks vs Total Clicks|
|url|String|URL of Link|

**Device**

|Field Name|Datatype|Description|
|---|---|---|
|desktop|Int|Number of clicks for Desktop users|
|mobile|Int|Number of clicks for Mobile users|

**Browser**

|Field Name|Datatype|Description|
|---|---|---|
|ie|Int|Number of clicks from Internet Explorer)|
|chrome|Int|Number of clicks from Chrome|
|firefox|Int|Number of clicks from Firefox|
|safari|Int|Number of clicks from Safari|
|other|Int|Number of clicks from browsers not listed|
