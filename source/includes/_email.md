### **Email**
<a name="email"></a>
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/v2/email/[gmaid]/campaigns?[query_params] |
| GET | /client_reports/v2/email/[gmaid]/campaigns/[global_master_campaign_id] |

This is an Email Metrics API that can be used by customers that have Email campaigns.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|`start_date`|When GMCID not present|Restricts the results to those occurring on or after this date|
|`end_date`|When GMCID not present|Restricts the results to those occurring on or before this date|
|`global_master_campaign_id[]`|No|Restricts results to all campaigns with given master campaign id|
|`sort_by`|No|Determines what attribute to sort by. Possible values: broadcast_date, quantity, opens, opens_pc, views, views_pc, clicks, clicks_pc, ctor, or ctvr  <br>**Default value: broadcast_date**|
|`sort_dir`|No|Determines what direction to sort results by.  Possible values: asc or desc <br>**Default value: desc**|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/v2/email/TEST_1/campaigns?start_date=2020-10-01&end_date=2020-10-10
```

> Retrieve data for a specific campaign

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/v2/email/TEST_1/campaigns/TEST_15231
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
                    "external_campaign_id": 4048365,
                    "external_campaign_name": "Demo Campaign Name",
                    "from_line": "Demo From Line",
                    "subject_line": "Demo Subject",
                    "broadcast_date": "2023-03-24",
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
        }
    ]
}
```

> Example Response for GMCID Show

```json



{
    "api_name": "email",
    "api_run_date": "2023-04-19",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "campaign": {
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
                "ctvr": 13.87,
                "devices": {
                    "desktop": 527,
                    "mobile": 254
                },
                "links": [

                    {
                        "index": 1,
                        "clicks": 31,
                        "clicks_pc": 0.11,
                        "width": 140,
                        "height": 42,
                        "position": {
                            "left": 42,
                            "top": 23
                        },
                        "link_pc": 3.96,
                        "url": "demo_url.com"
                    },
                    {
                        "index": 2,
                        "clicks": 53,
                        "clicks_pc": 0.18,
                        "width": 0,
                        "height": 0,
                        "position": {
                            "left": 0,
                            "top": 0
                        },
                        "link_pc": 6.78,
                        "url": "demo_url.com"
                    }
                ]
            },
            {
                "external_campaign_id": 4048365,
                "external_campaign_name": "Demo Campaign Name",
                "from_line": "Demo From Line",
                "subject_line": "Demo Subject",
                "broadcast_date": "2023-03-24",
                "quantity": 9999,
                "opens": 1456,
                "opens_pc": 14.56,
                "screenshot_url": "https://api.demo.url/screenshot/2.jpg",
                "views": 1456,
                "views_pc": 14.56,
                "clicks": 282,
                "clicks_pc": 2.82,
                "ctor": 19.37,
                "ctvr": 19.37,
                "devices": {
                    "desktop": 117,
                    "mobile": 85
                },
                "links": [
                    {
                        "index": 1,
                        "clicks": 4,
                        "clicks_pc": 0.06,
                        "width": 140,
                        "height": 42,
                        "position": {
                            "left": 42,
                            "top": 23
                        },
                        "link_pc": 1.98,
                        "url": "demo_url.com"
                    }
                ]
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
