# Spend vs Budget

This report returns the Spend and Budget amounts for the current cycle of the specified campaign using the required `global_master_campaign_id` parameter.  Range is also required, and must be set to `cycle`.

Example Request:

```
client_reports/spend_vs_budget/USA_10?range=cycle&global_master_campaign_id=USA_16
```

Report data is returned as JSON e.g.:

```json
{
  "report_type": "spend_vs_budget",
  "report_date": "2016-11-07",
  "end_date": "2016-11-06",
  "report_data": {
    "spend_vs_budget": [
      {
        "name": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "spend": 1230.11,
        "budget": 1230.11,
        "value": -1
      }
    ]
  },
  "report_data_previous_period": {
    "spend_vs_budget": [
      {
        "name": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "spend": 1230.11,
        "budget": 1230.11,
        "value": -1
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569",
  "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/spend_vs_budget/USA_105569?global_master_campaign_id=USA_16&range=cycle",
  "available_campaigns": [
    {
      "name": "Coupon",
      "global_master_campaign_id": "USA_11"
    },
    {
      "name": "Sale",
      "global_master_campaign_id": "USA_12"
    },
    {
      "name": "Radio",
      "global_master_campaign_id": "USA_13"
    },
    {
      "name": "Yelp",
      "global_master_campaign_id": "USA_14"
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
    "DailyCampaignActivity": "2016-11-07T16:34:38.000Z",
    "Campaign": "2016-11-07T16:34:38.000Z"
  },
  "start_date": "2016-10-07",
  "currency": "USD"
}

```
