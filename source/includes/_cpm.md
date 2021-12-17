# CPM Report

This report returns the CPM (Cost per thousand impressions) report for the specified campaign using the required `global_master_campaign_id` parameter.  Range is also required, and must be set to `cycle`.

### Example Request:

```
curl -H "Authorization: token reachanalyticsreportingservicetoken" \
"localhost:3001/client_reports/cpm/USA_105569?range=cycle&global_master_campaign_id=USA_15"
```

Report data is returned as JSON e.g.:

```json
{
  "report_type": "cpm",
  "report_date": "2016-09-08",
  "end_date": "2016-09-07",
  "report_data": [
    {
      "name": "Super Bowl",
      "global_master_campaign_id": "USA_15",
      "value": 2085.26
    }
  ],
  "global_master_advertiser_id": "USA_105569",
  "available_campaigns": [
    {
      "name": "Radio",
      "global_master_campaign_id": "USA_13"
    },
    {
      "name": "Yelp",
      "global_master_campaign_id": "USA_14"
    }
  ],
  "data_import_status": {
    "DailyCampaignActivity": "2016-09-08T18:50:09.000Z",
    "Campaign": "2016-09-08T18:50:09.000Z"
  },
  "start_date": "2016-07-08",
  "currency": "USD"
}

```
