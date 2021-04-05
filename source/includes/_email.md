### **Email**
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/email/[gmaid]/campaigns?[query_params] |
| GET | /client_reports/email/[gmaid]/campaigns/[global_master_campaign_id] |


This is an Email Metrics API that can be used by customers that have Email campaigns.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|start_date|When GMCID not present|Restricts the results to those occurring on or after this date|
|end_date|When GMCID not present|Restricts the results to those occurring on or before this date|
|page|No|Determines the page to return <br>**Default value is 1**|
|page_size|No|Determines how many campaigns are returned per page <br>**Default value: 25**|
|sort_by|No|Determines what attribute to sort by. Possible values: broadcast_date, quantity, opens, opens_pc, views, views_pc, clicks, clicks_pc, ctor, or ctvr  <br>**Default value: broadcast_date**|
|sort_dir|No|Determines what direction to sort results by.  Possible values: asc or desc <br>**Default value: desc**|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/email/TEST_1/campaigns?start_date=2020-10-01&end_date=2020-10-10
```

> Retrieve data for a specific campaign

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/email/TEST_1/campaigns/TEST_15231
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
                "width": 300,
                "height": 241,
                "position": {
                    "left": 20,
                    "top": 40
                },
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
                "width": 300,
                "height": 241,
                "position": {
                    "left": 20,
                    "top": 40
                },
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
                "width": 300,
                "height": 241,
                "position": {
                    "left": 20,
                    "top": 40
                },
                "clicks_pc": 0.0,
                "url": "demo_url.com",
                "created_at": "2020-10-30T18:57:49.000Z",
                "updated_at": "2020-10-30T18:57:49.000Z"
            }
        ],
        "screenshot_url": "https://api.demo.url/screenshot/1.jpg",
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
|campaigns|Campaign[]|[Arrays of Campaigns](#campaignsemail)|

<a name="campaignsemail"></a>
**Campaigns**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|Unique Campaign Identifier.|
|name|String|Campaign Name|
|type|String|Campaign Type|
|status|String|Campaign Status|
|goals|Goal[]|[Array of Goals](#goalsemail)|
|external_campaign_id|String|Email Vendor's Campaign Identifier|
|external_campaign_name|String|Email Vendor's Campaign Name|
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
|devices|Device[]|[Array of Device](#deviceemail)|
|browsers|Browser[]|[Array of Browser](#browseremail)|
|links|Link[]|[Array of Link](#linkemail)|
|screenshot_url|String|Link to the campaign screenshot url|
|pdf_base64|String|Base64 encoded pdf of report|

<a name="goalsemail"></a>
**Goals**

| Field Name | Datatype | Description |
|---|---|---|
| goal_type_id | Integer | goal type id |
| goal_type | String | goal type name |

<a name="linkemail"></a>
**Link**

|Field Name|Datatype|Description|
|---|---|---|
|index|Int|Index of Link|
|clicks|Int|Number of clicks for Link|
|clicks_pc|Float|Percent of Link clicks vs quantity|
|link_pc|Float|Percent of Link clicks vs Total Clicks|
|width|Int|The width of the Link|
|height|Int|The height of the Link|
|position|Int|The position (top and left) of the Link|
|url|String|URL of Link|

<a name="deviceemail"></a>
**Device**

|Field Name|Datatype|Description|
|---|---|---|
|desktop|Integer|Number of clicks for Desktop users|
|mobile|Integer|Number of clicks for Mobile users|

<a name="browseremail"></a>
**Browser**

|Field Name|Datatype|Description|
|---|---|---|
|ie|Integer|Number of clicks from Internet Explorer|
|chrome|Integer|Number of clicks from Chrome|
|firefox|Integer|Number of clicks from Firefox|
|safari|Integer|Number of clicks from Safari|
|other|Integer|Number of clicks from browsers not listed|
