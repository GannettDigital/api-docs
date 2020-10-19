## Campaigns

### **Campaigns & Cycles**
<a name="campaigns_and_cycles"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns/[gmaid]?[query_params] |

**Usage**

A list of filtered Campaigns and Campaign Cycles for a given report type and advertiser.  (Cycles are not included for keyword_report)

If using the `campaigns_overview` report_type, all campaign data for the account will be provided including both Paid Media and Offer-based campaigns.

- Paid Media campaigns will include the associated `campaign_type`. Paid Media campaigns include:
  - Chat
  - Search
  - Display
  - TotalTrack
  - Facebook
  - YouTube
  - CVT/Web Events
- Offer-based campaigns include any campaign that is not Paid Media and will have a `campaign_type` of `other`. Examples of offer-based campaigns could be a Website or Client Center Organic Tracking campaign.

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
"https://api.reachlocalservices.com/client_reports/campaigns/TEST_1?report_type=campaigns_overview
```

> Retrieve data for a specific report_type as well as for running and stopped campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns/TEST_1?report_type=campaigns_overview&campaign_status[]=running,stopped
```

> Example Response

```json
{
    "advertiser_name": "Advertiser (Demo)",
    "advertiser_code": "demo",
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.reachlocalservices.com/client_reports/campaigns/TEST_1?report_type=campaigns_overview",
    "report_campaigns": [
        {
            "name": "Gannett Display Campaign (Demo)",
            "global_master_campaign_id": "TEST_-25",
            "campaign_type": "display",
            "organization": "gannett",
            "status": "running",
            "has_addressable_geofence": true,
            "has_cvt": false,
            "cycles": [
                {
                    "campaign_cycle": "TEST_-26",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Gannett Display Campaign (Demo)"
                }
            ]
        },
        {
            "name": "Display Campaign (Demo)",
            "global_master_campaign_id": "TEST_1",
            "campaign_type": "display",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "cycles": [
                {
                    "campaign_cycle": "TEST_2",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Display Campaign (Demo)"
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
            "cycles": [
                {
                    "campaign_cycle": "TEST_5",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Search Campaign (Demo)"
                }
            ]
        },
        {
            "name": "Chat Campaign (Demo)",
            "global_master_campaign_id": "TEST_19",
            "campaign_type": "chat",
            "organization": "reachlocal",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "cycles": [
                {
                    "campaign_cycle": "TEST_20",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Chat Campaign (Demo)"
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
            "cycles": [
                {
                    "campaign_cycle": "TEST_23",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Facebook Campaign (Demo)"
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
            "cycles": [
                {
                    "campaign_cycle": "TEST_29",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Geofence Campaign (Demo)"
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
            "cycles": [
                {
                    "campaign_cycle": "TEST_32",
                    "start_date": "2020-10-10",
                    "end_date": null,
                    "name": "Youtube Campaign (Demo)"
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
|location|String|Location URL|
|report_campaigns|Object|[Report Campaigns Object](#campaigns_reportcampaigns)|

<a name="campaigns_reportcampaigns"></a>
#### Report Campaigns Object
| Field Name | Datatype | Description |
|---|---|---|
|name|String|Name of campaign|
|global_master_campaign_id|String|Identifier for campaign|
|campaign_type|String|Type of campaign|
|organization|String|Organization|
|status|String|Status of campaign|
|has_addressable_geofence|Boolean|`True` or `False`|
|has_cvt|Boolean|`True` or `False`|
|cycles|Object|[Cycles Object](#campaigns_cycles)|

<a name="campaigns_cycles"></a>
#### Cycles Object
| Field Name | Datatype | Description |
|---|---|---|
|campaign_cycle|String|Identifier for campaign cycle|
|start_date|String|Start date of campaign cycle|
|end_date|String|End date of campaign cycle|
|name|String|Name of campaign cycle|
