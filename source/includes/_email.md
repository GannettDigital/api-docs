### **Email**
<a name="email"></a>
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/v2/email/[gmaid]/campaigns?[query_params] |
| GET | /client_reports/v2/email/[gmaid]/campaigns/[external_campaign_id] |

This is an Email Metrics API that can be used by customers that have Email campaigns.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|`start_date`|When GMCID not present|Restricts the results to those occurring on or after this date|
|`end_date`|When GMCID not present|Restricts the results to those occurring on or before this date|
|`global_master_campaign_id[]`|No|Restricts results to all campaigns with given master campaign id|
|`order_by`|No|Determines what attribute to order by. Possible values: broadcast_date, quantity, opens, opens_pc, views, views_pc, clicks, clicks_pc, ctor, or ctvr  <br>**Default value: broadcast_date**|
|`order_dir`|No|Determines what direction to order results by.  Possible values: asc or desc <br>**Default value: desc**|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/v2/email/TEST_1/campaigns?start_date=2020-10-01&end_date=2020-10-10
```

> Retrieve data for a specific campaign

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/v2/email/TEST_1/campaigns/10390
```

> Example Response Index

```json
{
    "api_name": "email",
    "api_run_date": "2023-04-19",
    "start_date": "2023-03-17",
    "end_date": "2023-04-17",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "campaigns": [
        {
            "global_master_campaign_id": "TEST_15231",
            "name": "Email Campaign (Demo)",
            "type": "email",
            "status": "running",
            "goals": [],
            "external_campaigns": [
                {
                    "external_campaign_id": 15231,
                    "external_campaign_name": "Demo Campaign Name",
                    "from_line": "Demo From Line",
                    "subject_line": "Demo Subject",
                    "broadcast_date": "2023-03-19",
                    "quantity": 9999,
                    "opens": 1536,
                    "opens_pc": 15.36,
                    "screenshot_url": "https://api.demo.url/screenshot/1.jpg",
                    "views": 1536,
                    "views_pc": 15.36,
                    "clicks": 213,
                    "clicks_pc": 2.13,
                    "ctor": 13.87,
                    "ctvr": 13.87
                },
                {
                    "external_campaign_id": 15232,
                    "external_campaign_name": "Demo Campaign Name",
                    "from_line": "Demo From Line",
                    "subject_line": "Demo Subject",
                    "broadcast_date": "2023-03-20",
                    "quantity": 9999,
                    "opens": 1456,
                    "opens_pc": 14.56,
                    "screenshot_url": "https://api.demo.url/screenshot/2.jpg",
                    "views": 1456,
                    "views_pc": 14.56,
                    "clicks": 282,
                    "clicks_pc": 2.82,
                    "ctor": 19.37,
                    "ctvr": 19.37
                }
            ]
        },
        {
            "global_master_campaign_id": "TEST_4048365",
            "name": "Email Campaign (Demo)",
            "type": "email",
            "status": "running",
            "goals": [],
            "external_campaigns": [
                {
                    "external_campaign_id": 10390,
                    "external_campaign_name": "Demo Campaign 1",
                    "from_line": "Demo From Line",
                    "subject_line": "Demo Subject",
                    "broadcast_date": "2023-04-01",
                    "quantity": 6053,
                    "opens": 1591,
                    "opens_pc": 26.28,
                    "screenshot_url": "http://cdn.screenshot-test.com/394-285-202102058.png",
                    "views": 1591,
                    "views_pc": 26.28,
                    "clicks": 322,
                    "clicks_pc": 5.32,
                    "ctor": 2024.0,
                    "ctvr": 2024.0
                }
            ]
        }
    ]
}
```

> Example Response for Show

```json
{
    "api_name": "email",
    "api_run_date": "2023-04-21",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "external_campaign": {
        "external_campaign_id": 10390,
        "external_campaign_name": "Demo Campaign 1",
        "from_line": "Demo From Line",
        "subject_line": "Demo Subject",
        "broadcast_date": "2023-04-01",
        "quantity": 6053,
        "opens": 1591,
        "opens_pc": 26.28,
        "screenshot_url": "http://cdn.screenshot-test.com/394-285-202102058.png",
        "views": 1591,
        "views_pc": 26.28,
        "clicks": 322,
        "clicks_pc": 5.32,
        "ctor": 2024.0,
        "ctvr": 2024.0,
        "devices": {
            "desktop": 161,
            "mobile": 161
        },
        "links": [
            {
                "index": 1,
                "clicks": 107,
                "clicks_pc": 5.3,
                "width": 2490,
                "height": 377,
                "position": {
                    "left": 5485,
                    "top": 377
                },
                "link_pc": 33.23,
                "url": "demo_url.com"
            },
            {
                "index": 2,
                "clicks": 107,
                "clicks_pc": 5.3,
                "width": 2490,
                "height": 377,
                "position": {
                    "left": 5485,
                    "top": 377
                },
                "link_pc": 33.23,
                "url": "demo_url.com"
            },
            {
                "index": 3,
                "clicks": 107,
                "clicks_pc": 5.3,
                "width": 2490,
                "height": 377,
                "position": {
                    "left": 5485,
                    "top": 377
                },
                "link_pc": 33.23,
                "url": "demo_url.com"
            }
        ]
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
|links|Link[]|[Array of Link](#linkemail)|
|screenshot_url|String|Link to the campaign screenshot url|

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
