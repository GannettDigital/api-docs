# Gustav Daily Creative Metrics API

This endpoint showcase interactions within display ads that occur on our network of sites. These are stored in a BigQuery database called Gustav.

##### Parameters
The API accepts the request parameters listed below and is grouped by the interval size for each publisher.
| Parameter | Required | Description |
|---|---|---|
| `start_date` | yes | Restricts the results to those occurring on or after this date. |
| `end_date` | yes | Restricts the results to those occurring on or before this date. |
|`campaign_status[]`|no|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

#### HTTP Request
GET https:// api.localiqservices.com/client_reports/gustav_daily_creative_metrics

#### Example Request
```
curl -L -g -X GET 'http://localhost:3001/client_reports/gustav_daily_creative_metrics/TEST_1?start_date=2021-06-01&end_date=2021-06-05&campaign_status[]=running&campaign_status[]=ended' \
-H 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
-H 'Content-Type: application/json'
```

##### Example Response
```javascript
{
    "report_type": "gustav_daily_creative_metric",
    "report_date": "2021-08-04",
    "earliest_date_available": "2021-06-01T00:00:00Z",
    "start_date": "2021-06-01",
    "end_date": "2021-06-05",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "totals": {
            "click": 567,
            "impression": 5840,
            "total_clicks": 567,
            "logo_click": 120,
            "cta_click": 421,
            "social_click": 27,
            "play": 303,
            "play25": 280,
            "play50": 175,
            "play75": 145,
            "play100": 88
        },
        "benchmark": {
            "play": 242,
            "play25": 224,
            "play50": 140,
            "play75": 116,
            "play100": 70
        },
        "totals_per_interval": [
            {
                "start_date": "2021-06-01",
                "click": 142,
                "impression": 134,
                "total_clicks": 63,
                "logo_click": 142,
                "cta_click": 199,
                "social_click": 0,
                "play": 143,
                "play25": 184,
                "play50": 31,
                "play75": 53,
                "play100": 66
            },
            {
                "start_date": "2021-06-02",
                "click": 119,
                "impression": 103,
                "total_clicks": 135,
                "logo_click": 106,
                "cta_click": 116,
                "social_click": 0,
                "play": 1,
                "play25": 145,
                "play50": 93,
                "play75": 90,
                "play100": 72
            },
            {
                "start_date": "2021-06-03",
                "click": 139,
                "impression": 110,
                "total_clicks": 188,
                "logo_click": 48,
                "cta_click": 38,
                "social_click": 0,
                "play": 4,
                "play25": 152,
                "play50": 42,
                "play75": 61,
                "play100": 22
            },
            {
                "start_date": "2021-06-04",
                "click": 144,
                "impression": 84,
                "total_clicks": 81,
                "logo_click": 180,
                "cta_click": 186,
                "social_click": 0,
                "play": 65,
                "play25": 46,
                "play50": 18,
                "play75": 70,
                "play100": 61
            },
            {
                "start_date": "2021-06-05",
                "click": 23,
                "impression": 153,
                "total_clicks": 87,
                "logo_click": 199,
                "cta_click": 178,
                "social_click": 0,
                "play": 90,
                "play25": 65,
                "play50": 83,
                "play75": 59,
                "play100": 14
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/gustav_daily_creative_metrics/TEST_1?campaign_status%5B%5D=running&campaign_status%5B%5D=ended&end_date=2021-06-05&start_date=2021-06-01"
}
```
