## Campaigns Report

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns/[gmaid]?[query_params] |

### Usage
A list of filtered Campaigns and Campaign Cycles for a given report type and advertiser.  (Cycles are not included for keyword_report)

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required? | Function |
|---|---|---|
| report_type | Required | Only campaigns appropriate for this type of report will be returned.  Allowed values are `facebook_campaign`, `display_activity`, `search_activity`, `youtube`, `campaigns_overview`, `keyword`, `google_keyword` and `geofence_summary`.|
| global_master_campaign_id[] | Optional | Restrict results to one or more specific campaigns|
| campaign_status[] | Optional | Restrict results to campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`.|

### Example:

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns/USA_142687?report_type=campaigns_overview
```

> The above command returns JSON structured similar to the following:

```javascript
{
    "global_master_advertiser_id": "USA_142687",
    "location": "https://api.reachlocalservices.com/client_reports/campaigns/USA_142687?report_type=campaigns_overview",
    "report_campaigns": [
        {
            "name": "Advertiser Campaign 1",
            "global_master_campaign_id": "USA_1426871",
            "campaign_type": "search",
            "status": "running",
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
            "status": "running",
            "campaign_type": "other",
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