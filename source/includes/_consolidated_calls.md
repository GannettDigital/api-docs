# Consolidated Calls Report

This report returns consolidated data from 3 different reports: call\_events (for calls), call\_duration\_histogram, and call\_time\_of\_day.  Params are the same as for Campaign Events report, plus required `number_of_bins` and `bin_size` params.

## Call Day of Week Report

This report returns data for calls by day of week for a given campaign for a given period.  The campaign defaults to all campaigns for the given advertiser, and can be overridden to specify a single campaign using the `global_master_campaign_id` parameter.

## Call Duration Histogram

This report returns data for a histogram of call durations for a given campaign for a given period.  The number of intervals (bins) used for
the histogram can be specified using the required `number_of_bins` parameter.  The size of each bin can be specified with the required `bin_size` parameter. The campaign defaults to all campaigns for the given advertiser, and can be overridden to specify a single campaign using the `global_master_campaign_id` parameter.

## Call Time Of Day Histogram

This report returns data for a histogram of call times for a given campaign for a given period. The campaign defaults to all campaigns for the given advertiser, and can be overridden to specify a single campaign using the `global_master_campaign_id` parameter. The hour buckets in the report are in the UTC time zone.

## Parameter Requirements:

R: Required, O: Optional

| range  | interval_type  | number\_of\_intervals  | number\_of\_bins | bin_size | end_date  | campaign_rollup  | global\_master\_campaign\_id |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| custom  | R  | R  | R  | R | R | O  | O | O |
| whole_month  | R  | n/a | R  | R  | n/a | O | O |
| ytd  | R  | n/a | R | R | n/a | O  | O  |
| cycle  | R  | n/a | R  | R | n/a | n/a | R |

Parameter Values:

| range  | interval_type  | number\_of\_intervals | number\_of\_bins | bin_size | end_date  | campaign_rollup |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| custom | 'day' or 'calendar_month'  | integer | integer | integer | date  | 'true' or 'false'  |
| ytd  |  'day' or 'calendar_month' | | integer | integer |  | 'true' or 'false' |
| cycle  | 'day' or 'calendar_month' | | integer | integer  |  | 'true' or 'false' |
| whole_month |  'day' or 'calendar_month' |   | integer | integer  |   |


###Example Request:

```
client_reports/consolidated_calls/USA_105569?range=custom&number_of_intervals=7&interval_type=day&number_of_bins=5&bin_size=30
```

This would result in the consolidated calls report for advertiser USA_105569 being returned with 3 sections, for each of the three sub-reports. Note: The key, `event_type` is not returned as part of consolidated calls report request.

Report data is returned as JSON e.g.:

```json
{
  "end_date": "2016-03-15",
  "global_master_advertiser_id": "USA_105569",
  "global_master_campaign_id": "ALL",
  "interval_type": "day",
  "number_of_intervals": 7,
  "number_of_bins": 5,
  "bin_size": 30,
  "range": "custom",
  "report_data": {
     "call_day_of_week": [
      {
        "day_of_week": 0,
        "total": 1
      },
      {
        "day_of_week": 1,
        "total": 2
      },
      {
        "day_of_week": 2,
        "total": 1
      },
      {
        "day_of_week": 3,
        "total": 4
      },
      {
        "day_of_week": 4,
        "total": 0
      },
      {
        "day_of_week": 5,
        "total": 3
      },
      {
        "day_of_week": 6,
        "total": 3
      }
    ],
    "call_duration_histogram": [
      {
        "duration": 0,
        "total": 12
      },
      {
        "duration": 30,
        "total": 0
      },
      {
        "duration": 60,
        "total": 12
      },
      {
        "duration": 90,
        "total": 0
      },
      {
        "duration": 120,
        "total": 6
      }
    ],
    "calls": [
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-09",
        "total": 38
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-09",
        "total": 37
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-09",
        "total": 43
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-10",
        "total": 35
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-10",
        "total": 36
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-10",
        "total": 50
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-11",
        "total": 36
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-11",
        "total": 38
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-11",
        "total": 37
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-12",
        "total": 35
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-12",
        "total": 35
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-12",
        "total": 50
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-13",
        "total": 38
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-13",
        "total": 43
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-13",
        "total": 46
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-14",
        "total": 37
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-14",
        "total": 45
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-14",
        "total": 53
      },
      {
        "campaign": "Yelp",
        "global_master_campaign_id": "USA_14",
        "start_date": "2016-03-15",
        "total": 40
      },
      {
        "campaign": "Super Bowl",
        "global_master_campaign_id": "USA_15",
        "start_date": "2016-03-15",
        "total": 43
      },
      {
        "campaign": "Classifieds",
        "global_master_campaign_id": "USA_16",
        "start_date": "2016-03-15",
        "total": 51
      }
    ],
    "call_time_of_day": [
      {
        "hour": "00",
        "total": 2
      },
      {
        "hour": "01",
        "total": 1
      },
      {
        "hour": "02",
        "total": 3
      },
      {
        "hour": "03",
        "total": 1
      },
      {
        "hour": "04",
        "total": 4
      },
      {
        "hour": "05",
        "total": 1
      },
      {
        "hour": "06",
        "total": 4
      },
      {
        "hour": "07",
        "total": 1
      },
      {
        "hour": "08",
        "total": 1
      },
      {
        "hour": "09",
        "total": 0
      },
      {
        "hour": "10",
        "total": 1
      },
      {
        "hour": "11",
        "total": 0
      },
      {
        "hour": "12",
        "total": 0
      },
      {
        "hour": "13",
        "total": 4
      },
      {
        "hour": "14",
        "total": 0
      },
      {
        "hour": "15",
        "total": 1
      },
      {
        "hour": "16",
        "total": 2
      },
      {
        "hour": "17",
        "total": 2
      },
      {
        "hour": "18",
        "total": 2
      },
      {
        "hour": "19",
        "total": 3
      },
      {
        "hour": "20",
        "total": 1
      },
      {
        "hour": "21",
        "total": 2
      },
      {
        "hour": "22",
        "total": 0
      },
      {
        "hour": "23",
        "total": 6
      }
    ]
  },
  "campaigns": [
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
    },
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
    }
  ],
  "available_campaigns": [
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
    },
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
    }
  ],
  "report_date": "2016-03-17",
  "report_type": "consolidated_calls",
  "data_import_status": {
    "Call": "2016-09-08T18:50:09.000Z",
    "DailyCampaignActivity": "2016-09-08T18:50:09.000Z",
    "Campaign": "2016-09-08T18:50:09.000Z"
  },
  "start_date": "2016-03-09"
}
```
