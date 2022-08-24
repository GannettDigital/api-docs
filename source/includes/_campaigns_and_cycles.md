## Campaigns APIs

<internal>### **Campaigns Search** </internal>

<internal>### Resource Overview</internal>

| <internal>Method | URI Format </internal>|
|---|---|
| GET | /client_reports/campaigns |

<internal>A list of filtered Campaigns that match the provided query string.</internal>

<internal>### Parameters</internal>

<internal>When using the GET method, the results can be filtered using these parameters:</internal>

|<internal> Param | Required? | Function </internal>|
|---|---|---|
| query | Yes | Query string used to search for campaigns, minimum of 3 characters |
| page | No | Pagination page |
| platform_id|Yes|An integer that indicates the client center plaform in which the login user has a registration Valid platform ids are: 1 (`USA`), 2 (`CAN`), 3 (`AUS`) and 6 (`GBR`)|

<internal>### Response Data Details</internal>

<internal>> Retrieve data for a specific report_type</internal>
<internal>
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" https://api.localiqservices.com/client_reports/campaigns?query=gci'
```
</internal>

<internal>> Retrieve data for a specific report_type as well as for running and stopped campaigns</internal>
<internal>
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" https://api.localiqservices.com/client_reports/campaigns?query=gci'
```
</internal>

<internal>> Example Response</internal>

<internal>
```json
{
    "platform_id": 1,
    "query": "GCI",
    "page": 1,
    "per_page": 5,
    "total_pages": 12529,
    "campaigns": [
        {
            "global_master_advertiser_id": "USA_834393",
            "global_master_campaign_id": "USA_-55370",
            "master_advertiser_name": "WA WA THRIFT MART",
            "name": "C54323_GCI08146_WA WA THRIFT MART Brownwood TX",
            "type": "gannett_display",
            "source": "Gannett Display",
            "status": "running",
            "start_date": "2022-02-04",
            "end_date": "2022-02-24"
        },
        {
            "global_master_advertiser_id": "USA_95569",
            "global_master_campaign_id": "USA_-55369",
            "master_advertiser_name": "C1264_COLLINS VISION CLINIC",
            "name": "C1264_GCI0226481_COLLINS VISION CLINIC- Branded Content",
            "type": "gannett_display",
            "source": "Gannett Display",
            "status": "running",
            "start_date": "2022-03-15",
            "end_date": "2022-04-13"
        },
        {
            "global_master_advertiser_id": "USA_23654",
            "global_master_campaign_id": "USA_-55368",
            "master_advertiser_name": "MISSAUGA NATIONAL BANK",
            "name": "C1170_GCI0812638_Missauga National Bank - Digital - Q1 2022",
            "type": "other",
            "source": "Facebook Ads - Custom Solutions",
            "status": "ended",
            "start_date": "2022-01-01",
            "end_date": "2022-03-31"
        },
        {
            "global_master_advertiser_id": "USA_876456",
            "global_master_campaign_id": "USA_-55364",
            "master_advertiser_name": "LONE OAK DOG TRAINING",
            "name": "C6764_GCI0786222_LONE OAK DOG TRAINING - Campaign January",
            "type": "gannett_display",
            "source": "Gannett Display",
            "status": "running",
            "start_date": "2022-01-01",
            "end_date": "2022-01-31"
        },
        {
            "global_master_advertiser_id": "USA_876456",
            "global_master_campaign_id": "USA_-55363",
            "master_advertiser_name": "LONE OAK DOG TRAINING",
            "name": "C6764_GCI0786224_LONE OAK DOG TRAINING - Campaign February",
            "type": "gannett_display",
            "source": "Gannett Display",
            "status": "running",
            "start_date": "2022-02-01",
            "end_date": "2022-02-28"
        }
    ]
}
```
</internal>

| <internal>Field Name | Datatype | Description</internal> |
|---|---|---|
|platform_id|String|Platform queried (1 for `USA`, 2 for `CAN`, 3 for `AUS` and 6 for `GBR`)|
|query|String|Search string used (minimum of 3 characters)|
|page|String|Results page (defaults to 1)|
|per_page|String|Results per page (defaults to 25)|
|total_pages|String|Total count of result pages|
|campaigns|Object|[Search Campaigns Object](#campaigns_searchcampaigns)|

<internal><a name="campaigns_searchcampaigns"></a></internal>
<internal>**Search Campaigns Object**</internal>

|<internal> Field Name | Datatype | Description </internal>|
|---|---|---|
|global_master_advertiser_id|String|Identifier for advertiser|
|global_master_campaign_id|String|Identifier for campaign|
|master_advertiser_name|String|Identifier for advertiser|
|name|String|Identifier for campaign|
|type|String|Type of campaign|
|source|String|Campaign offer name|
|status|String|Status of campaign|
|start_date|String|Campaign offer name|
|end_date|String|Campaign offer name|

### **Campaigns & Cycles**

<a name="campaigns_and_cycles"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns/[gmaid]?[query_params] |

A list of filtered Campaigns, Campaign Cycles, and goals for a given report type and advertiser.  (Cycles are not included for keyword_report)

If using the `campaigns_overview` report_type, all campaign data for the account will be provided including both Paid Media and Offer-based campaigns.

- Paid Media campaigns will include the associated `campaign_type`. Paid Media campaigns include:
  - Chat
  - Search
  - Display
  - TotalTrack
  - Facebook
  - YouTube
  - CVT/Web Events
  - Xmedia
  - Email
- Offer-based campaigns include any campaign that is not Paid Media and will have a `campaign_type` of `other`. Examples of offer-based campaigns could be a Website or Client Center Organic Tracking campaign.
- For search_activity, unified_display, and facebook_campaigns report_types, xmedia campaign types are included.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required? | Function |
|---|---|---|
| report_type | Required | Only campaigns appropriate for this type of report will be returned.  Allowed values are **facebook_campaign**, **display_activity**, **search_activity**, **youtube**, **campaigns_overview**, **keyword**, **google_keyword**, **geofence_summary**, **cvt**, and **addressable_geofence**|
| global_master_campaign_id[] | Optional | Restrict results to one or more specific campaigns|
| campaign_status[] | Optional | Restrict results to campaigns with given status values.  Allowed values are **running**, **stopped** and **ended**|

### Response Data Details

> Retrieve data for a specific report_type

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/campaigns/TEST_1?report_type=campaigns_overview
```

> Retrieve data for a specific report_type as well as for running and stopped campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/campaigns/TEST_1?report_type=campaigns_overview&campaign_status[]=running,stopped
```

> Example Response

```json
{
    "advertiser_name": "Advertiser (Demo)",
    "advertiser_code": "demo",
    "global_master_advertiser_id": "TEST_1",
    "report_campaigns": [
        {
            "name": "Gannett Display Campaign (Demo)",
            "global_master_campaign_id": "TEST_-25",
            "campaign_type": "display",
            "organization": "gannett",
            "status": "running",
            "has_addressable_geofence": true,
            "has_cvt": false,
            "has_video": false,
            "offer_name": "Gannett Display",
            "cycles": [
                {
                    "campaign_cycle": "TEST_-26",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Gannett Display Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Display Campaign (Demo)",
            "global_master_campaign_id": "TEST_1",
            "campaign_type": "display",
            "organization": "reachlocal",
            "status": "running",
            "bidding_pricing_model_id": 8,
            "has_addressable_geofence": false,
            "has_cvt": true,
            "has_video": true,
            "offer_name": "Targeted Display",
            "cycles": [
                {
                    "campaign_cycle": "TEST_2",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Display Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Search Campaign (Demo)",
            "global_master_campaign_id": "TEST_4",
            "campaign_type": "search",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "has_video": true,
            "offer_name": "Search Engine Marketing",
            "cycles": [
                {
                    "campaign_cycle": "TEST_5",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Search Campaign (Demo)"
                }
            ],
            "goals": []
        },
        {
            "name": "Chat Campaign (Demo)",
            "global_master_campaign_id": "TEST_19",
            "campaign_type": "chat",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "has_video": false,
            "offer_name": "Live Chat",
            "cycles": [
                {
                    "campaign_cycle": "TEST_20",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Chat Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Facebook Campaign (Demo)",
            "global_master_campaign_id": "TEST_22",
            "campaign_type": "facebook",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": false,
            "has_video": false,
            "offer_name": null,
            "cycles": [
                {
                    "campaign_cycle": "TEST_23",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Facebook Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Geofence Campaign (Demo)",
            "global_master_campaign_id": "TEST_28",
            "campaign_type": "display",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": false,
            "has_video": false,
            "offer_name": "ReachDisplay GeoFence",
            "cycles": [
                {
                    "campaign_cycle": "TEST_29",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Geofence Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Youtube Campaign (Demo)",
            "global_master_campaign_id": "TEST_31",
            "campaign_type": "youtube",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": false,
            "has_video": false,
            "offer_name": "YouTube Advertising",
            "cycles": [
                {
                    "campaign_cycle": "TEST_32",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Youtube Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Xmedia Campaign (Demo)",
            "global_master_campaign_id": "TEST_37",
            "campaign_type": "xmedia",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": false,
            "has_video": false,
            "cycles": [
                {
                    "campaign_cycle": "TEST_38",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Xmedia Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        },
        {
            "name": "Email Campaign (Demo)",
            "global_master_campaign_id": "TEST_33",
            "campaign_type": "email",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": false,
            "has_video": false,
            "cycles": [
                {
                    "campaign_cycle": "TEST_34",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Email Campaign (Demo)"
                }
            ],
            "goals": [
                {
                    "goal_type_id": 2,
                    "goal_type": "CPL"
                }
            ]
        }
    ]
}
```

| Field Name | Datatype | Description |
|---|---|---|
|advertiser_name|String|Name of advertiser|
|advertiser_code|String|Non-unique identifier used for internal purposes|
|global_master_advertiser_id|String|Identifier for advertiser|
|report_campaigns|Object|[Report Campaigns Object](#campaigns_reportcampaigns)|

<a name="campaigns_reportcampaigns"></a>
**Report Campaigns Object**

| Field Name | Datatype | Description |
|---|---|---|
|name|String|Name of campaign|
|global_master_campaign_id|String|Identifier for campaign|
|campaign_type|String|Type of campaign|
|organization|String|Organization|
|status|String|Status of campaign|
|<internal>off_platform_activity|Boolean|Will be true in cases when campaigns are missing expected WPER data.</internal>|
|bidding_pricing_model_id|Integer|The id which will be used to filter the sub type of top search campaign (shown only for search campaigns)|
|has_addressable_geofence|Boolean|`True` or `False`|
|has_cvt|Boolean|`True` or `False`|
|has_video|Boolean|`True` or `False`|
|offer_name|String|Campaign offer name|
|cycles|Object|[Cycles Object](#campaigns_cycles)|
|goals|Object|[Goals Object](#campaigns_goals)|

<a name="campaigns_cycles"></a>
**Cycles Object**

| Field Name | Datatype | Description |
|---|---|---|
|campaign_cycle|String|Identifier for campaign cycle|
|start_date|String|Start date of campaign cycle|
|end_date|String|End date of campaign cycle|
|name|String|Name of campaign cycle|

<a name="campaigns_goals"></a>
**Goals Object**

| Field Name | Datatype | Description |
|---|---|---|
|goal_type_id|String|Identifier for campaign goal type|
|goal_type|String|Name(Type) of goal type|
