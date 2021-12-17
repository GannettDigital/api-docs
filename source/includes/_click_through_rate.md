# Click-through Rate Report

This report returns the CTR for the specified campaign using the required `global_master_campaign_id` parameter.

Example curl:

```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/click_through_rate/USA_105569?range=cycle&global_master_campaign_id=USA_15"
```

Report data is returned as JSON e.g.:

```json
{
  "report_type": "click_through_rate",
  "report_date": "2016-09-08",
  "end_date": "2016-09-07",
  "report_data": [
    {
      "name": "Super Bowl",
      "global_master_campaign_id": "USA_15",
      "value": 0.9509
    }
  ],
  "global_master_advertiser_id": "USA_105569",
  "available_campaigns": [
    {
      "name": "Coupon",
      "global_master_campaign_id": "USA_11"
    },
    {
      "name": "Super Bowl",
      "global_master_campaign_id": "USA_15"
    },
    {
      "name": "Classifieds",
      "global_master_campaign_id": "USA_16"
    }
  ],
  "data_import_status": {
    "DailyCampaignActivity": "2016-09-08T18:50:09.000Z",
    "Campaign": "2016-09-08T18:50:09.000Z"
  },
  "start_date": "2016-07-08"
}

```
