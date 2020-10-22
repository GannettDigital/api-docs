## Marketplace Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/marketplace_metrics?[query_params]

#### API Name: marketplace_metrics
### Usage
Use GET to retrieve information from the Marketplace Metrics API. Data can be returned for a GMAID or an array of CaptureX Profile IDs by a specific date range determined by start date and end date.

Subtotals can be aggregated into an interval, and will be totaled for `day`, `calendar_week`, or `calendar_month`. The first day of the interval will be used to denote the interval totals.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|No*|Restrict results to the specified Global Master Advertiser ID|
|`profile_id[]`|No*|Restrict results to the specified CaptureX Profile ID(s)|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No|Return subtotals for the given intervals within the start-end time provided. Accepts `calendar_month`, `calendar_week`, or `day`|

  \* One (but not both) of the query params `global_master_advertiser_id` or `profile_id[]` must be specified.

### Metrics

The metrics returned for each interval will be:
                "link_clicks" - Marketplace visitor clicked on link to locaton's web site
                "call_clicks" - Marketplace visitor clicked on link to location's phone number
                "visits" - Marketplace visits
                "total_leads" - Marketplace visitor filled a form

Totals across all profile_ids (by interval, and grand total) follow the array of profile_ids, but this may be of limited value, as the profile_ids requested may have no relation to each other.

### Example Requests

#### By Gmaid:

_Request:_
```
curl -X GET \
  'https://api-stage.gcion.com/apgb2b-reporting/client_reports/marketplace_metrics?end_date=2020-06-18&start_date=2020-06-01&global_master_advertiser_id=USA_172716' \
  -H 'Authorization: token 1b01Secret' \
  -H 'x-api-key: SJNPSecret'
```

_Response:_
```javascript
{
    "api_name": "marketplace_metrics",
    "api_run_date": "2020-06-23",
    "start_date": "2020-06-01",
    "end_date": "2020-06-03",
    "time_zone": "America/Los_Angeles",
    "interval_size": "none",
    "global_master_advertiser_id": "USA_172716",
    "report_data": {
        "intervals": [
            {
                "start_date": "2020-06-01",
                "call_clicks": 2,
                "link_clicks": 3,
                "visits": 9,
                "total_leads": 10
            },
            {
                "start_date": "2020-06-02",
                "call_clicks": 2,
                "link_clicks": 3,
                "visits": 9,
                "total_leads": 10
            },
            {
                "start_date": "2020-06-03",
                "call_clicks": 2,
                "link_clicks": 3,
                "visits": 9,
                "total_leads": 10
            }
        ],
        "totals": {
            "call_clicks": 6,
            "link_clicks": 9,
            "visits": 27,
            "total_leads": 30
        }
    }
}
```

#### By profile_id:

_Request:_
```
curl -X GET \
  'https://api-stage.gcion.com/apgb2b-reporting/client_reports/marketplace_metrics?end_date=2020-06-18&start_date=2020-06-01&profile_id[]=a5944a7a-b7bf-495a-8eaa-542d612c8bf8&profile_id[]=4b6bc8eb-a4f6-4837-9ad5-7491f06936d6' \
  -H 'Authorization: token 1b01Secret' \
  -H 'x-api-key: SJNPSecret'
```

_Response:_
```javascript
{
    "api_name": "marketplace_metrics",
    "api_run_date": "2020-07-28",
    "start_date": "2020-05-01",
    "end_date": "2020-06-30",
    "time_zone": "America/Los_Angeles",
    "interval_size": "calendar_week",
    "report_data": {
        "profile_ids": [
            {
                "profile_id": "a5944a7a-b7bf-495a-8eaa-542d612c8bf8",
                "intervals": [
                    {
                        "start_date": "2020-06-08",
                        "call_clicks": 1,
                        "link_clicks": 1,
                        "visits": 2,
                        "total_leads": 3
                    },
                    {
                        "start_date": "2020-06-15",
                        "call_clicks": 0,
                        "link_clicks": 1,
                        "visits": 0,
                        "total_leads": 4
                    }
                ],
                "totals": {
                    "call_clicks": 1,
                    "link_clicks": 2,
                    "visits": 2,
                    "total_leads": 7
                }
            },
            {
                "profile_id": "4b6bc8eb-a4f6-4837-9ad5-7491f06936d6",
                "intervals": [
                    {
                        "start_date": "2020-06-18",
                        "call_clicks": 1,
                        "link_clicks": 0,
                        "visits": 0,
                        "total_leads": 3
                    }
                ],
                "totals": {
                    "call_clicks": 1,
                    "link_clicks": 0,
                    "visits": 0,
                    "total_leads": 3
                }
            }
        ],
        "intervals": [
            {
                "start_date": "2020-06-08",
                "call_clicks": 1,
                "link_clicks": 1,
                "visits": 2,
                "total_leads": 3
            },
            {
                "start_date": "2020-06-15",
                "call_clicks": 0,
                "link_clicks": 1,
                "visits": 0,
                "total_leads": 5
            },
            {
                "start_date": "2020-06-18",
                "call_clicks": 1,
                "link_clicks": 0,
                "visits": 0,
                "total_leads": 2
            }
        ],
        "totals": {
            "call_clicks": 2,
            "link_clicks": 2,
            "visits": 2,
            "total_leads": 10
        }
    }
}
```
