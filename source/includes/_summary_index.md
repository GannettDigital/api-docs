## Summary Index Report for Mobile App

This report is for the "summary" page of the mobile app, and reports highlights from severl sub-reports.
Set `include_summary=true` and then pass parameters appropriate to the Events Report.

Parameter Requirements:

R: Required, O: Optional

| range  | interval_type  | number\_of\_intervals  | end_date  | global\_master\_campaign\_id |
|:-:|:-:|:-:|:-:|:-:|:-:|
| custom  | R  | R  | R  | O  | O |
| whole_month  | R  | n/a  | n/a  | O | O |
| ytd  | R  | n/a | n/a | O | O |
| cycle  | R  | n/a | n/a  | n/a | R |

Parameter Values:

| range  | interval_type  | number\_of\_intervals  | end_date  | campaign_rollup |
|:-:|:-:|:-:|:-:|:-:|
| custom | 'day', 'calendar_week' or 'calendar_month'  | integer  | date  | 'true' or 'false' |
| ytd  |  'day', 'calendar_week' or 'calendar_month' |  |  | 'true' or 'false' |
| cycle  |  'day', 'calendar_week' or 'calendar_month' |   |   | 'true' or 'false'  |
| whole_month | 'day', 'calendar_week' or 'calendar_month'  |   |   |   |   |

#### Example Request

```
GET /client_reports?include_summary=true&range=custom&interval_type=day&number_of_intervals=30"
```

##### Example Response

```json
{
  "campaigns": [
    {
      "global_master_campaign_id": "USA_14",
      "name": "Yelp"
    }
  ],
  "available_campaigns": [
    {
      "global_master_campaign_id": "USA_11",
      "name": "Coupon"
    },
    {
      "global_master_campaign_id": "USA_12",
      "name": "Sale"
    },
    {
      "global_master_campaign_id": "USA_13",
      "name": "Radio"
    },
    {
      "global_master_campaign_id": "USA_14",
      "name": "Yelp"
    },
    {
      "global_master_campaign_id": "USA_15",
      "name": "Super Bowl"
    },
    {
      "global_master_campaign_id": "USA_16",
      "name": "Classifieds"
    }
  ],
  "reports": [
    {
      "report_type": "click_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 1045
        }
      ]
    },
    {
      "report_type": "impression_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 1059
        }
      ]
    },
    {
      "report_type": "call_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 1071
        }
      ]
    },
    {
      "report_type": "web_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 1056
        }
      ]
    },
    {
      "report_type": "email_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 1058
        }
      ]
    }
  ],
  "currency": "USD",
  "start_date": "2016-08-12",
  "end_date": "2016-10-11"
}

```

##### Example Response (Range = Cycle)

```json
{
  "campaigns": [
    {
      "global_master_campaign_id": "USA_14",
      "name": "Yelp"
    }
  ],
  "available_campaigns": [
    {
      "global_master_campaign_id": "USA_11",
      "name": "Coupon"
    },
    {
      "global_master_campaign_id": "USA_12",
      "name": "Sale"
    },
    {
      "global_master_campaign_id": "USA_13",
      "name": "Radio"
    },
    {
      "global_master_campaign_id": "USA_14",
      "name": "Yelp"
    },
    {
      "global_master_campaign_id": "USA_15",
      "name": "Super Bowl"
    },
    {
      "global_master_campaign_id": "USA_16",
      "name": "Classifieds"
    }
  ],
  "reports": [
    {
      "report_type": "click_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 377,
          "trend": 32.87
        }
      ]
    },
    {
      "report_type": "impression_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 362,
          "trend": 31.56
        }
      ]
    },
    {
      "report_type": "call_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 375,
          "trend": 32.96
        }
      ]
    },
    {
      "report_type": "web_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 369,
          "trend": 32.7
        }
      ]
    },
    {
      "report_type": "email_events",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 374,
          "trend": 34.27
        }
      ]
    },
    {
      "report_type": "spend_vs_budget",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "spend": 1230.11,
          "budget": 1230.11,
          "value": -1
        }
      ]
    },
    {
      "report_type": "cpm",
      "campaigns": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14"
        }
      ],
      "campaign_data": [
        {
          "name": "Yelp",
          "global_master_campaign_id": "USA_14",
          "value": 3398.09
        }
      ]
    }
  ],
  "start_date": "2016-08-07",
  "end_date": "2016-09-06",
  "currency": "USD"
}

```
