# Campaign Events Reports API

This is a collection of reports that each contain counts from one type of lead, summed from a calculated starting point. The individual report types are:

```
call_events_report
click_events_report,
chat_events_report,
web_events_report,
email_events_report,
impression_events_report
```

The report allows for data in many ranges, which can be set via the required `range` param.  The data can be aggregated by days or calendar months, by setting the required `interval_type` and `number_of_intervals` params appropriately.  The optional `end_date` param can be set for specific report range. To request lead counts aggregated across all campaigns, the optional `campaign_rollup` param can be set to `true`.

Parameter Requirements:

R: Required, O: Optional

| range  | interval_type  | number_of_intervals  | end_date  | campaign_rollup  | global_master_campaign_id |
|:-:|:-:|:-:|:-:|:-:|:-:|
| custom  | R  | R  | R  | O  | O | O |
| whole_month  | R  | n/a  | n/a  | O | O | O |
| ytd  | R  | n/a | n/a | O  | O  | O |
| cycle  | R  | n/a | n/a  | n/a  | n/a | R |

Parameter Values:

| range  | interval_type  | number_of_intervals  | end_date  | campaign_rollup |
|:-:|:-:|:-:|:-:|:-:|
| custom | day  | integer  | date  | 'true'  |
| ytd  |  calendar_month |  |  | 'false'  |
| cycle  |   |   |   |   |
| whole_month |   |   |   |   |   |

## Custom Range

###Example local dev curl:

```
curl -H "Authorization: token reachanalyticsreportingservicetoken" \
"localhost:3001/client_reports/call_events/USA_105569?range=custom&number_of_intervals=2&interval_type=calendar_month"

```
This will return the call events report for advertiser USA_105569, aggregated in 2 intervals, where each interval is a calendar month, broken out by campaign.

Report data is returned as JSON e.g.:

```json
{
  "report_type": "call_events",
  "report_date": "2016-09-08",
  "end_date": "2016-09-07",
  "report_data": {
    "call_events": [
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-08-01",
        "total": 1069
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-08-01",
        "total": 1180
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-08-01",
        "total": 1293
      },
      {
        "campaign": "Coupon",
        "global_master_campaign_id": "USA_11",
        "start_date": "2016-08-01",
        "total": 0
      },
      {
        "campaign": "Sale",
        "global_master_campaign_id": "USA_12",
        "start_date": "2016-08-01",
        "total": 0
      },
      {
        "campaign": "Radio",
        "global_master_campaign_id": "USA_13",
        "start_date": "2016-08-01",
        "total": 0
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-09-01",
        "total": 264
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-09-01",
        "total": 285
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-09-01",
        "total": 313
      },
      {
        "campaign": "Coupon",
        "global_master_campaign_id": "USA_11",
        "start_date": "2016-09-01",
        "total": 0
      },
      {
        "campaign": "Sale",
        "global_master_campaign_id": "USA_12",
        "start_date": "2016-09-01",
        "total": 0
      },
      {
        "campaign": "Radio",
        "global_master_campaign_id": "USA_13",
        "start_date": "2016-09-01",
        "total": 0
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569",
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
    "DailyCampaignActivity": "2016-09-08T18:50:09.000Z",
    "Campaign": "2016-09-08T18:50:09.000Z"
  },
  "start_date": "2016-08-01",
  "global_master_campaign_id": "ALL",
  "campaigns": [
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
  "range": "custom",
  "number_of_intervals": 2,
  "interval_type": "calendar_month",
  "event_type": "calls",
  "campaign_rollup": false
}

```

## Cycle Range
To get a report for a given campaign from the beginning of the current campaign cycle, the required param `range` needs to be set to `cycle` and the required param `global_master_campaign_id` must be set to a campaign for the given advertiser.

###Example Cycle Report Request:

```
client_reports/call_events/USA_105569?event_type=calls&range=cycle&global_master_campaign_id=USA_15
```

This would result in the campaign events report for call event for advertiser USA_105569 returned aggregated for each campaign cycle.

Report data is returned as JSON e.g.:

```json
{
  "report_type": "call_events",
  "report_date": "2016-10-07",
  "end_date": "2016-10-06",
  "report_data": {
    "call_events": [
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-10-07",
        "total": 10
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-10-08",
        "total": 13
      },
    ]
  },
  "report_data_previous_period": {
    "call_events": [
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-10-05",
        "total": 11
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-10-06",
        "total": 14
      }
    ]
  },
  "global_master_advertiser_id": "USA_105569",
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
    "DailyCampaignActivity": "2016-10-07T16:34:38.000Z",
    "Campaign": "2016-10-07T16:34:38.000Z"
  },
  "start_date": "2016-10-07",
  "global_master_campaign_id": "USA_16",
  "campaigns": [
    {
      "name": "Classifieds",
      "global_master_campaign_id": "USA_16"
    }
  ],
  "range": "cycle",
  "number_of_intervals": 0,
  "interval_type": "day",
  "event_type": "calls",
  "campaign_rollup": false
}
```
