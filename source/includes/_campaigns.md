## Campaigns & Cycles

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns/[gmaid]?[query_params] |
### API Name: Campaigns Report
### Usage
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
| report_type | Required | Only campaigns appropriate for this type of report will be returned.  Allowed values are `facebook_campaign`, `display_activity`, `search_activity`, `youtube`, `campaigns_overview`, `keyword`, `google_keyword`, `geofence_summary`, `cvt`, and `addressable_geofence`.|
| global_master_campaign_id[] | Optional | Restrict results to one or more specific campaigns|
| campaign_status[] | Optional | Restrict results to campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`.|

### Response Data Details

| Field Name | Datatype | Description |
|---|---|---|
|global_master_advertiser_id|String|Identifier for advertiser.|
|location|URL||
|report_campaigns|Object|[Report Campaigns Object](#campaigns_reportcampaigns).|

<a name="campaigns_reportcampaigns"></a>
#### Report Campaigns Object
| Field Name | Datatype | Description |
|---|---|---|
|name|String|Name of campaign.|
|global_master_campaign_id|String|Identifier for campaign.|
|campaign_type|String|Type of campaign.|
|status|String|Status of campaign.|
|has_addressable_geofence|Boolean|`True` or `False`.|
|has_cvt|Boolean|`True` or `False`.|
|cycles|Object|[Cycles Object](#campaigns_cycles).|

<a name="campaigns_cycles"></a>
#### Cycles Object
| Field Name | Datatype | Description |
|---|---|---|
|campaign_cycle|String|Identifier for campaign cycle.|
|start_date|String|Start date of campaign cycle.|
|end_date|String|End date of campaign cycle.|
|name|String|Name of campaign cycle.|

### Example:

> Retrieve data for a specific report_type

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns/USA_142687?report_type=campaigns_overview
```

> Retrieve data for a specific report_type as well as for running and stopped campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns/USA_142687?report_type=campaigns_overview&campaign_status[]=running,stopped
```

> The above command returns JSON structured similar to the following:

```javascript
{
    "advertiser_name": "Best Business",
    "advertiser_code": "1234567",
    "global_master_advertiser_id": "USA_142687",
    "location": "https://api.reachlocalservices.com/client_reports/campaigns/USA_142687?report_type=campaigns_overview",
    "report_campaigns": [
        {
            "name": "Advertiser Campaign 1",
            "global_master_campaign_id": "USA_1426871",
            "campaign_type": "search",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "cycles": [
                {
                    "campaign_cycle": "USA_14268711",
                    "start_date": "2016-04-26",
                    "end_date": "2016-06-04",
                    "name": "Advertiser Campaign Cycle 1"
                },
                {
                    "campaign_cycle": "USA_14268712",
                    "start_date": "2016-06-04",
                    "end_date": "2016-06-27",
                    "name": "Advertiser Campaign Cycle 2"
                }
            ]
        },
        {
            "name": "Advertiser Campaign 2",
            "global_master_campaign_id": "USA_1426872",
            "campaign_type": "chat",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "cycles": [
                {
                    "campaign_cycle": "USA_14268721",
                    "start_date": "2014-02-26",
                    "end_date": null,
                    "name": "Advertiser Campaign Cycle 3"
                }
            ]
        }
        {
            "name": "Advertiser Campaign 3",
            "global_master_campaign_id": "USA_1426873",
            "campaign_type": "other",
            "status": "running",
            "has_addressable_geofence": false,
            "has_cvt": true,
            "cycles": [
                {
                    "campaign_cycle": "USA_14268731",
                    "start_date": "2017-05-02",
                    "end_date": "2017-06-02",
                    "name": "Advertiser Campaign Cycle 4"
                },
                {
                    "campaign_cycle": "USA_14268732",
                    "start_date": "2017-06-02",
                    "end_date": "2017-07-02",
                    "name": "Advertiser Campaign Cycle 5"
                },
                {
                    "campaign_cycle": "USA_14268733",
                    "start_date": "2017-07-02",
                    "end_date": "2017-08-15",
                    "name": "Advertiser Campaign Cycle 6"
                },
                {
                    "campaign_cycle": "USA_14268734",
                    "start_date": "2017-08-15",
                    "end_date": null,
                    "name": "Advertiser Campaign Cycle 7"
                }
            ]
        }
    ]
}
```
