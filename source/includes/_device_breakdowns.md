## Device Breakdown Report

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/device_breakdowns/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve information for the Device Breakdowns report for a given advertiser.

The data returned will include the impressions and clicks for the tablet, mobile, desktop, and unknown device types.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/device_breakdowns/USA_196462?start_date=2018-10-01&end_date=2018-10-31"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/device_breakdowns/USA_196462?global_master_campaign_id[]=USA_2626300&start_date=2018-10-01&end_date=2018-10-31"
```
###### Retrieve data for campaigns that are stopped and running
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/device_breakdowns/USA_196462?&campaign_status[]=running&campaign_status[]=stopped&start_date=2018-10-01&end_date=2018-10-31"
```

#### Response Description

```javascript
{
    "report_type": "device_breakdowns",
    "report_date": "2020-04-28",
    "earliest_date_available": "2020-03-01",
    "start_date": "2020-03-01",
    "end_date": "2020-03-10",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "report_data": {
        "social": [
            {
                "metric_type": "impressions",
                "devices": {
                    "tablet": {
                        "total": 3479,
                        "percent": 28.81
                    },
                    "desktop": {
                        "total": 1719,
                        "percent": 14.24
                    },
                    "mobile": {
                        "total": 5157,
                        "percent": 42.71
                    },
                    "unknown": {
                        "total": 1719,
                        "percent": 14.24
                    },
                    "total": 12074
                }
            },
            {
                "metric_type": "clicks",
                "devices": {
                    "tablet": {
                        "total": 71,
                        "percent": 41.52
                    },
                    "desktop": {
                        "total": 20,
                        "percent": 11.7
                    },
                    "mobile": {
                        "total": 60,
                        "percent": 35.09
                    },
                    "unknown": {
                        "total": 20,
                        "percent": 11.7
                    },
                    "total": 171
                }
            }
        ],
        "youtube": [
            {
                "metric_type": "impressions",
                "devices": {
                    "tablet": {
                        "total": 2523,
                        "percent": 25.0
                    },
                    "desktop": {
                        "total": 2523,
                        "percent": 25.0
                    },
                    "mobile": {
                        "total": 2523,
                        "percent": 25.0
                    },
                    "unknown": {
                        "total": 2523,
                        "percent": 25.0
                    },
                    "total": 10092
                }
            },
            {
                "metric_type": "clicks",
                "devices": {
                    "tablet": {
                        "total": 26,
                        "percent": 25.0
                    },
                    "desktop": {
                        "total": 26,
                        "percent": 25.0
                    },
                    "mobile": {
                        "total": 26,
                        "percent": 25.0
                    },
                    "unknown": {
                        "total": 26,
                        "percent": 25.0
                    },
                    "total": 104
                }
            }
        ],
        "search": [
            {
                "metric_type": "impressions",
                "devices": {
                    "tablet": {
                        "total": 2960,
                        "percent": 18.56
                    },
                    "desktop": {
                        "total": 6274,
                        "percent": 39.33
                    },
                    "mobile": {
                        "total": 6717,
                        "percent": 42.11
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 15951
                }
            },
            {
                "metric_type": "clicks",
                "devices": {
                    "tablet": {
                        "total": 25,
                        "percent": 14.12
                    },
                    "desktop": {
                        "total": 61,
                        "percent": 34.46
                    },
                    "mobile": {
                        "total": 91,
                        "percent": 51.41
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 177
                }
            }
        ],
        "xmedia": [
            {
                "metric_type": "impressions",
                "devices": {
                    "tablet": {
                        "total": 2312,
                        "percent": 27.0
                    },
                    "desktop": {
                        "total": 2017,
                        "percent": 23.55
                    },
                    "mobile": {
                        "total": 3235,
                        "percent": 37.78
                    },
                    "unknown": {
                        "total": 999,
                        "percent": 11.67
                    },
                    "total": 8563
                }
            },
            {
                "metric_type": "clicks",
                "devices": {
                    "tablet": {
                        "total": 38,
                        "percent": 42.22
                    },
                    "desktop": {
                        "total": 15,
                        "percent": 16.67
                    },
                    "mobile": {
                        "total": 32,
                        "percent": 35.56
                    },
                    "unknown": {
                        "total": 5,
                        "percent": 5.56
                    },
                    "total": 90
                }
            }
        ],
        "all_types": [
            {
                "metric_type": "impressions",
                "devices": {
                    "tablet": {
                        "total": 11274,
                        "percent": 24.15
                    },
                    "desktop": {
                        "total": 12533,
                        "percent": 26.85
                    },
                    "mobile": {
                        "total": 17632,
                        "percent": 37.77
                    },
                    "unknown": {
                        "total": 5241,
                        "percent": 11.23
                    },
                    "total": 46680
                }
            },
            {
                "metric_type": "clicks",
                "devices": {
                    "tablet": {
                        "total": 160,
                        "percent": 29.52
                    },
                    "desktop": {
                        "total": 122,
                        "percent": 22.51
                    },
                    "mobile": {
                        "total": 209,
                        "percent": 38.56
                    },
                    "unknown": {
                        "total": 51,
                        "percent": 9.41
                    },
                    "total": 542
                }
            }
        ],
        "totals": {
            "impressions": 46680,
            "clicks": 542
        }
    }
}
```
